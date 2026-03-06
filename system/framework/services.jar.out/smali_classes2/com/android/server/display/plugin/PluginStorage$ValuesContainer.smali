.class final Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;
.super Ljava/lang/Object;
.source "PluginStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/plugin/PluginStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValuesContainer"
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
.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmValues(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNonGlobalDisplaysLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->getNonGlobalDisplaysLocked()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->getValueLocked(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->updateValueLocked(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 262
    .local p0, "this":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;-><init>()V

    return-void
.end method

.method private getNonGlobalDisplaysLocked()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 275
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "GLOBAL"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 276
    return-object v0
.end method

.method private getValueLocked(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "displayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    const-string v2, "GLOBAL"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private updateValueLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "uniqueDisplayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;, "Lcom/android/server/display/plugin/PluginStorage$ValuesContainer<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :goto_0
    return-void
.end method
