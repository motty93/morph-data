import morph
import plotly.express as px
from morph import MorphGlobalContext


@morph.func
@morph.load_data("example_data")
def example_chart(context: MorphGlobalContext):
    df = context.data["example_data"].groupby("source").sum(["orders"]).reset_index()
    fig = px.bar(df, x="source", y="orders")

    return fig
