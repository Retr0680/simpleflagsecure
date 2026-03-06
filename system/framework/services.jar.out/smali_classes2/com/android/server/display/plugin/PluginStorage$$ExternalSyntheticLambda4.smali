.class public final synthetic Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/server/display/plugin/PluginType;

    check-cast p2, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage;->$r8$lambda$7xBCmlHDr7uu0vLhFjyfPldxcU4(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)V

    return-void
.end method
