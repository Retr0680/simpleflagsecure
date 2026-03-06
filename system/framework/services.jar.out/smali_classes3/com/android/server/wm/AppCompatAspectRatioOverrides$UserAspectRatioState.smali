.class Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioOverrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppCompatAspectRatioOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserAspectRatioState"
.end annotation


# instance fields
.field private mHasBeenSet:Z

.field private mUserAspectRatio:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmUserAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetUserAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;Lcom/android/server/wm/ActivityRecord;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->getUserAspectRatio(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 318
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mHasBeenSet:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/AppCompatAspectRatioOverrides-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;-><init>()V

    return-void
.end method

.method private getUserAspectRatio(Lcom/android/server/wm/ActivityRecord;)I
    .locals 3
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 323
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mHasBeenSet:Z

    if-nez v0, :cond_1

    .line 325
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 326
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mHasBeenSet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 334
    :cond_0
    :goto_0
    goto :goto_2

    .line 331
    :goto_1
    nop

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown retrieving aspect ratio user override "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    return v0
.end method
