public class EvalVisitor extends ExpBaseVisitor<Double> {

    @Override
    public Double visitProg(ExpParser.ProgContext ctx) {
        for (ExpParser.ExprContext exprCtx : ctx.expr()) {
            Double result = visit(exprCtx);
            System.out.println("Resultado: " + result);
        }
        return 0.0;
    }

    @Override
    public Double visitExpr(ExpParser.ExprContext ctx) {
        // Ambos argumentos son NUM
        double x = Double.parseDouble(ctx.NUM(0).getText());
        int n = Integer.parseInt(ctx.NUM(1).getText());

        double resultado = 0.0;
        double factorial = 1.0;

        for (int k = 0; k <= n; k++) {
            if (k > 0) factorial *= k;
            resultado += Math.pow(x, k) / factorial;
        }

        return resultado;
    }
}

