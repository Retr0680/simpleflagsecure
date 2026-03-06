.class Lcom/android/server/display/plugin/PluginManager$Injector;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getEnabledPluginTypes(Lcom/android/server/display/feature/DisplayManagerFlags;)Ljava/util/Set;
    .locals 2
    .param p1, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/feature/DisplayManagerFlags;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    .local v0, "enabledTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginType<*>;>;"
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isHdrOverrideEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/android/server/display/plugin/PluginType;->HDR_BOOST_OVERRIDE:Lcom/android/server/display/plugin/PluginType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-object v0
.end method

.method getPluginStorage(Ljava/util/Set;)Lcom/android/server/display/plugin/PluginStorage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;>;)",
            "Lcom/android/server/display/plugin/PluginStorage;"
        }
    .end annotation

    .line 125
    .local p1, "enabledTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginType<*>;>;"
    new-instance v0, Lcom/android/server/display/plugin/PluginStorage;

    invoke-direct {v0, p1}, Lcom/android/server/display/plugin/PluginStorage;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method loadPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/android/server/display/plugin/PluginStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/display/plugin/PluginStorage;",
            "Ljava/util/Set<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;>;)",
            "Ljava/util/List<",
            "Lcom/android/server/display/plugin/Plugin;",
            ">;"
        }
    .end annotation

    .line 130
    .local p3, "enabledTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/display/plugin/PluginType<*>;>;"
    nop

    .line 131
    const v0, 0x10402b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "providerJarPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading plugins from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 137
    :cond_0
    nop

    .line 139
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 138
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->getOrCreateClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldalvik/system/PathClassLoader;

    move-result-object v1

    .line 141
    .local v1, "pathClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.android.server.display.plugin.PluginsProviderImpl"

    invoke-virtual {v1, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/server/display/plugin/PluginsProvider;

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 143
    .local v4, "cp":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/display/plugin/PluginsProvider;>;"
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/plugin/PluginsProvider;

    .line 144
    .local v3, "provider":Lcom/android/server/display/plugin/PluginsProvider;
    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/display/plugin/PluginsProvider;->getPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 148
    .end local v1    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .end local v3    # "provider":Lcom/android/server/display/plugin/PluginsProvider;
    .end local v4    # "cp":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/display/plugin/PluginsProvider;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 145
    :catch_1
    move-exception v1

    goto :goto_1

    .line 148
    :goto_0
    nop

    .line 150
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v3, "Class instantiation failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 145
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    nop

    .line 146
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loading failed: com.android.server.display.plugin.PluginsProviderImpl is not found in"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 152
    :goto_2
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
