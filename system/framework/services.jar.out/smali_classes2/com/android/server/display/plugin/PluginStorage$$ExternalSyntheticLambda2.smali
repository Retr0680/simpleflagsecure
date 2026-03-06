.class public final synthetic Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/display/plugin/PluginEventStorage;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage;->$r8$lambda$qNwLvSRZ35HnWhFOq_w2xbndio4(Ljava/util/Map;Ljava/lang/String;Lcom/android/server/display/plugin/PluginEventStorage;)V

    return-void
.end method
