.class Lcom/android/server/wm/AppCompatSafeRegionPolicy;
.super Ljava/lang/Object;
.source "AppCompatSafeRegionPolicy.java"


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private final mAllowSafeRegionLetterboxing:Ljava/util/function/BooleanSupplier;

.field private final mLatestSafeRegionBounds:Landroid/graphics/Rect;

.field private mNeedsSafeRegionBounds:Z

.field final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$9PpbIrRxIXQmlpsG9oaSF15leV0(Lcom/android/server/wm/AppCompatSafeRegionPolicy;Landroid/content/pm/PackageManager;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->lambda$new$0(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 51
    iput-object p2, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    new-instance v0, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatSafeRegionPolicy;Landroid/content/pm/PackageManager;)V

    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mAllowSafeRegionLetterboxing:Ljava/util/function/BooleanSupplier;

    .line 68
    return-void
.end method

.method private allowSafeRegionLetterboxing(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 72
    :try_start_0
    const-string v0, "android.window.PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING"

    iget-object v1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x1

    return v1
.end method

.method private synthetic lambda$new$0(Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->allowSafeRegionLetterboxing(Landroid/content/pm/PackageManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 55
    return v1

    .line 59
    :cond_0
    :try_start_0
    const-string v0, "android.window.PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING"

    iget-object v2, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 61
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 62
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 59
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method


# virtual methods
.method allowSafeRegionLetterboxing()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mAllowSafeRegionLetterboxing:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 157
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mNeedsSafeRegionBounds=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " latestSafeRegionBoundsOnActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->isLetterboxedForSafeRegionOnlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isLetterboxForSafeRegionOnlyAllowed=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->allowSafeRegionLetterboxing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allowSafeRegionLetterboxing=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    :cond_2
    return-void
.end method

.method public getLatestSafeRegionBounds()Landroid/graphics/Rect;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->allowSafeRegionLetterboxing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 97
    .local v0, "latestSafeRegionBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 102
    :goto_0
    return-object v0
.end method

.method public getNeedsSafeRegionBounds()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    return v0
.end method

.method isLetterboxedForSafeRegionOnlyAllowed()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getNeedsSafeRegionBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0
.end method

.method public resolveSafeRegionBoundsConfigurationIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "resolvedConfig"    # Landroid/content/res/Configuration;
    .param p2, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->isLetterboxedForSafeRegionOnlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 120
    return-void

    .line 116
    :goto_0
    return-void
.end method

.method public setNeedsSafeRegionBounds(Z)V
    .locals 0
    .param p1, "needsSafeRegionBounds"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    .line 142
    return-void
.end method
