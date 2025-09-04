import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class Main {
    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            System.out.println("Uso: java Main <archivo_entrada>");
            return;
        }

        CharStream input = CharStreams.fromFileName(args[0]);
        ExpLexer lexer = new ExpLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        ExpParser parser = new ExpParser(tokens);
        ParseTree tree = parser.prog();

        EvalVisitor visitor = new EvalVisitor();
        visitor.visit(tree);
    }
}

