.class public Lcom/android/server/display/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/plugin/PluginManager$Injector;,
        Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;
    }
.end annotation


# static fields
.field private static final PROVIDER_IMPL_CLASS:Ljava/lang/String; = "com.android.server.display.plugin.PluginsProviderImpl"

.field private static final TAG:Ljava/lang/String; = "PluginManager"


# instance fields
.field private final mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

.field private final mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/plugin/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 52
    new-instance v0, Lcom/android/server/display/plugin/PluginManager$Injector;

    invoke-direct {v0}, Lcom/android/server/display/plugin/PluginManager$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/plugin/PluginManager;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager$Injector;)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager$Injector;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p3, "injector"    # Lcom/android/server/display/plugin/PluginManager$Injector;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p3, p2}, Lcom/android/server/display/plugin/PluginManager$Injector;->getEnabledPluginTypes(Lcom/android/server/display/feature/DisplayManagerFlags;)Ljava/util/Set;

    move-result-object v0

    .line 58
    .local v0, "enabledTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginType<*>;>;"
    invoke-virtual {p3, v0}, Lcom/android/server/display/plugin/PluginManager$Injector;->getPluginStorage(Ljava/util/Set;)Lcom/android/server/display/plugin/PluginStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    .line 59
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPluginManagerEnabled()Z

    move-result v1

    const-string v2, "PluginManager"

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    invoke-virtual {p3, p1, v1, v0}, Lcom/android/server/display/plugin/PluginManager$Injector;->loadPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loaded Plugins:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    .line 65
    const-string v1, "PluginManager disabled"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 96
    const-string v0, "PluginManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/plugin/PluginStorage;->dump(Ljava/io/PrintWriter;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/plugin/Plugin;

    .line 99
    .local v1, "plugin":Lcom/android/server/display/plugin/Plugin;
    invoke-interface {v1, p1}, Lcom/android/server/display/plugin/Plugin;->dump(Ljava/io/PrintWriter;)V

    .line 100
    .end local v1    # "plugin":Lcom/android/server/display/plugin/Plugin;
    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/plugin/PluginManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/plugin/PluginManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    return-void
.end method

.method public subscribe(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .locals 1
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

    .line 81
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    .local p3, "listener":Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;, "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage;->addListener(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    .line 82
    return-void
.end method

.method public unsubscribe(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .locals 1
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

    .line 89
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    .local p3, "listener":Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;, "Lcom/android/server/display/plugin/PluginManager$PluginChangeListener<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage;->removeListener(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    .line 90
    return-void
.end method
