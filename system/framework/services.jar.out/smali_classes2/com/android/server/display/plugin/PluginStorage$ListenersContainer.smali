.class final Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;
.super Ljava/lang/Object;
.source "PluginStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/plugin/PluginStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenersContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8J1D9eKOUj6h71CCHekepdYyQMU(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->lambda$addListenerLocked$0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddListenerLocked(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->addListenerLocked(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveListenerLocked(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->removeListenerLocked(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 235
    .local p0, "this":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;-><init>()V

    return-void
.end method

.method private addListenerLocked(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)Z
    .locals 2
    .param p1, "uniqueDisplayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<",
            "TT;>;)Z"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    .local p2, "listener":Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;, "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    new-instance v1, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer$$ExternalSyntheticLambda0;-><init>()V

    .line 242
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 243
    .local v0, "listenersForDisplay":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static synthetic lambda$addListenerLocked$0(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method private removeListenerLocked(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .locals 2
    .param p1, "uniqueDisplayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    .local p2, "listener":Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;, "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 250
    .local v0, "listenersForDisplay":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;>;"
    if-nez v0, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_1
    return-void
.end method
