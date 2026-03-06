.class public Lcom/android/server/display/plugin/PluginStorage;
.super Ljava/lang/Object;
.source "PluginStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;,
        Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;
    }
.end annotation


# static fields
.field static final GLOBAL_ID:Ljava/lang/String; = "GLOBAL"

.field private static final TAG:Ljava/lang/String; = "PluginStorage"


# instance fields
.field private final mEnabledTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;",
            "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPluginEventStorages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/plugin/PluginEventStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;",
            "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4NHpfRXNSqkyR96RLPGoHeG_OGc(Ljava/lang/Object;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->lambda$updateValue$1(Ljava/lang/Object;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7xBCmlHDr7uu0vLhFjyfPldxcU4(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage;->lambda$dump$5(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JPyfKrTJKUXeM22epagmQ5vWvYk(Ljava/lang/String;)Lcom/android/server/display/plugin/PluginEventStorage;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/plugin/PluginStorage;->lambda$updateValue$0(Ljava/lang/String;)Lcom/android/server/display/plugin/PluginEventStorage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZNHg48vVXUJO_sfoVRF99TeZVfQ(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage;->lambda$getListenersForUpdateLocked$2(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qNwLvSRZ35HnWhFOq_w2xbndio4(Ljava/util/Map;Ljava/lang/String;Lcom/android/server/display/plugin/PluginEventStorage;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage;->lambda$dump$3(Ljava/util/Map;Ljava/lang/String;Lcom/android/server/display/plugin/PluginEventStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yLyukOKWn1ZeoT9KYUV67YzOHvM(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage;->lambda$dump$4(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;>;)V"
        }
    .end annotation

    .line 68
    .local p1, "enabledTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginType<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mPluginEventStorages:Ljava/util/Map;

    .line 69
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mEnabledTypes:Ljava/util/Set;

    .line 70
    return-void
.end method

.method private getListenersContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;)",
            "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<",
            "TT;>;"
        }
    .end annotation

    .line 212
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    .line 213
    .local v0, "container":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<*>;"
    if-nez v0, :cond_0

    .line 214
    new-instance v1, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;-><init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V

    .line 215
    .local v1, "lc":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    iget-object v2, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-object v1

    .line 218
    .end local v1    # "lc":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    :cond_0
    return-object v0
.end method

.method private getListenersForUpdateLocked(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p2, "uniqueDisplayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<",
            "TT;>;>;"
        }
    .end annotation

    .line 108
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getListenersContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    move-result-object v0

    .line 109
    .local v0, "listenersContainer":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 112
    .local v1, "localListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;>;"
    const-string v2, "GLOBAL"

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getValuesContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    move-result-object v2

    .line 114
    .local v2, "valuesContainer":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    invoke-static {v2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$mgetNonGlobalDisplaysLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)Ljava/util/Set;

    move-result-object v3

    .line 115
    .local v3, "excludedDisplayIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3, v1}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 120
    .end local v2    # "valuesContainer":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    .end local v3    # "excludedDisplayIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;

    move-result-object v2

    .line 122
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 121
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 124
    :goto_0
    return-object v1
.end method

.method private getValuesContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;)",
            "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<",
            "TT;>;"
        }
    .end annotation

    .line 225
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    .line 226
    .local v0, "container":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<*>;"
    if-nez v0, :cond_0

    .line 227
    new-instance v1, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;-><init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V

    .line 228
    .local v1, "vc":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    iget-object v2, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-object v1

    .line 231
    .end local v1    # "vc":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    :cond_0
    return-object v0
.end method

.method private isTypeDisabled(Lcom/android/server/display/plugin/PluginType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;)Z"
        }
    .end annotation

    .line 206
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<*>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mEnabledTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$dump$3(Ljava/util/Map;Ljava/lang/String;Lcom/android/server/display/plugin/PluginEventStorage;)V
    .locals 1
    .param p0, "timeFrames"    # Ljava/util/Map;
    .param p1, "displayId"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/android/server/display/plugin/PluginEventStorage;

    .line 183
    invoke-virtual {p2}, Lcom/android/server/display/plugin/PluginEventStorage;->getTimeFrames()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method private static synthetic lambda$dump$4(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)V
    .locals 2
    .param p0, "localValues"    # Ljava/util/Map;
    .param p1, "type"    # Lcom/android/server/display/plugin/PluginType;
    .param p2, "valueContainer"    # Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$fgetmValues(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method private static synthetic lambda$dump$5(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)V
    .locals 2
    .param p0, "localListeners"    # Ljava/util/Map;
    .param p1, "type"    # Lcom/android/server/display/plugin/PluginType;
    .param p2, "container"    # Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private static synthetic lambda$getListenersForUpdateLocked$2(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p0, "excludedDisplayIds"    # Ljava/util/Set;
    .param p1, "localListeners"    # Ljava/util/Set;
    .param p2, "localDisplayId"    # Ljava/lang/String;
    .param p3, "listeners"    # Ljava/util/Set;

    .line 116
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateValue$0(Ljava/lang/String;)Lcom/android/server/display/plugin/PluginEventStorage;
    .locals 1
    .param p0, "d"    # Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/server/display/plugin/PluginEventStorage;

    invoke-direct {v0}, Lcom/android/server/display/plugin/PluginEventStorage;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$updateValue$1(Ljava/lang/Object;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .locals 0
    .param p0, "valueToNotify"    # Ljava/lang/Object;
    .param p1, "l"    # Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;

    .line 102
    invoke-interface {p1, p0}, Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;->onChanged(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addListener(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .locals 5
    .param p2, "uniqueDisplayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 133
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    .local p3, "listener":Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;, "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->isTypeDisabled(Lcom/android/server/display/plugin/PluginType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener ignored for disabled type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 137
    :cond_0
    const-string v0, "GLOBAL"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener ignored for GLOBAL_ID, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    .line 142
    .local v0, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getListenersContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    move-result-object v2

    .line 144
    .local v2, "container":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    invoke-static {v2, p2, p3}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$maddListenerLocked(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getValuesContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    move-result-object v3

    .line 146
    .local v3, "valuesContainer":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    invoke-static {v3, p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$mgetValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 148
    .end local v2    # "container":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    .end local v3    # "valuesContainer":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    invoke-interface {p3, v0}, Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;->onChanged(Ljava/lang/Object;)V

    .line 152
    :cond_3
    return-void

    .line 148
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "localValues":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/display/plugin/PluginType<*>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v1, "localListeners":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/display/plugin/PluginType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v2, "timeFrames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;>;>;"
    iget-object v3, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 182
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/plugin/PluginStorage;->mPluginEventStorages:Ljava/util/Map;

    new-instance v5, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 185
    iget-object v4, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    new-instance v5, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 188
    iget-object v4, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    new-instance v5, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 191
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    const-string v3, "PluginStorage:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "values="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listeners="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string v3, "PluginEventStorage:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 198
    .local v4, "timeFrameEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;>;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimeFrames for displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    .line 200
    .local v6, "timeFrame":Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
    invoke-virtual {v6, p1}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->dump(Ljava/io/PrintWriter;)V

    .line 201
    .end local v6    # "timeFrame":Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
    goto :goto_1

    .line 202
    .end local v4    # "timeFrameEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;>;>;"
    :cond_0
    goto :goto_0

    .line 203
    :cond_1
    return-void

    .line 191
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method removeListener(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .locals 3
    .param p2, "uniqueDisplayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 159
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    .local p3, "listener":Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;, "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->isTypeDisabled(Lcom/android/server/display/plugin/PluginType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeListener ignored for disabled type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_0
    const-string v0, "GLOBAL"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeListener ignored for GLOBAL_ID, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getListenersContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    move-result-object v1

    .line 169
    .local v1, "container":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    invoke-static {v1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$mremoveListenerLocked(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    .line 170
    .end local v1    # "container":Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;, "Lcom/android/server/display/plugin/PluginStorage$ListenersContainer<TT;>;"
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateGlobalValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 63
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "GLOBAL"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/display/plugin/PluginStorage;->updateValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public updateValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p2, "uniqueDisplayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 81
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->isTypeDisabled(Lcom/android/server/display/plugin/PluginType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateValue ignored for disabled type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 85
    :cond_0
    const-string v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateValue, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getValuesContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    move-result-object v1

    .line 91
    .local v1, "valuesByType":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    invoke-static {v1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$mupdateValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-static {v1, p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$mgetValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "valueToNotify":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/server/display/plugin/PluginStorage;->mPluginEventStorages:Ljava/util/Map;

    new-instance v4, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/plugin/PluginEventStorage;

    .line 97
    .local v3, "storage":Lcom/android/server/display/plugin/PluginEventStorage;
    invoke-virtual {v3, p1}, Lcom/android/server/display/plugin/PluginEventStorage;->onValueUpdated(Lcom/android/server/display/plugin/PluginType;)V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage;->getListenersForUpdateLocked(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 100
    .end local v1    # "valuesByType":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    .end local v3    # "storage":Lcom/android/server/display/plugin/PluginEventStorage;
    .local v4, "localListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const-string v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateValue, notifying listeners="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 103
    return-void

    .line 100
    .end local v2    # "valueToNotify":Ljava/lang/Object;, "TT;"
    .end local v4    # "localListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
