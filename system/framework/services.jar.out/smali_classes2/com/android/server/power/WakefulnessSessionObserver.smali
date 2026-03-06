.class public Lcom/android/server/power/WakefulnessSessionObserver;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakefulnessSessionObserver$Injector;,
        Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;,
        Lcom/android/server/power/WakefulnessSessionObserver$Clock;,
        Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;,
        Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;,
        Lcom/android/server/power/WakefulnessSessionObserver$PolicyReason;,
        Lcom/android/server/power/WakefulnessSessionObserver$OverrideOutcome;,
        Lcom/android/server/power/WakefulnessSessionObserver$OffReason;
    }
.end annotation


# static fields
.field static final DEFAULT_USER_ACTIVITY:I = 0x0

.field static final HANDLER_TOKEN:Ljava/lang/Object;

.field static final OFF_REASON_POWER_BUTTON:I = 0x2

.field static final OFF_REASON_TIMEOUT:I = 0x1

.field static final OFF_REASON_UNKNOWN:I = 0x0

.field static final OVERRIDE_OUTCOME_CANCEL_CLIENT_API_CALL:I = 0x3

.field static final OVERRIDE_OUTCOME_CANCEL_CLIENT_DISCONNECT:I = 0x6

.field static final OVERRIDE_OUTCOME_CANCEL_OTHER:I = 0x7

.field static final OVERRIDE_OUTCOME_CANCEL_POWER_BUTTON:I = 0x5

.field static final OVERRIDE_OUTCOME_CANCEL_USER_INTERACTION:I = 0x4

.field static final OVERRIDE_OUTCOME_TIMEOUT_SUCCESS:I = 0x1

.field static final OVERRIDE_OUTCOME_TIMEOUT_USER_INITIATED_REVERT:I = 0x2

.field static final OVERRIDE_OUTCOME_UNKNOWN:I = 0x0

.field static final POLICY_REASON_BRIGHT_INITIATED_REVERT:I = 0x4

.field static final POLICY_REASON_BRIGHT_UNDIM:I = 0x3

.field static final POLICY_REASON_OFF_POWER_BUTTON:I = 0x2

.field static final POLICY_REASON_OFF_TIMEOUT:I = 0x1

.field static final POLICY_REASON_UNKNOWN:I = 0x0

.field static final SCREEN_POLICY_DIM_POWER_OFF_BRIGHT_THRESHOLD_MILLIS:J = 0x1f4L

.field static final SEND_OVERRIDE_TIMEOUT_LOG_THRESHOLD_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "WakefulnessSessionObserver"

.field static final USER_INITIATED_REVERT_THRESHOLD_MILLIS:J = 0x1388L


# instance fields
.field private final mClock:Lcom/android/server/power/WakefulnessSessionObserver$Clock;

.field private mContext:Landroid/content/Context;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOverrideTimeoutMs:I

.field private mPhysicalDisplayPortIdForDefaultDisplay:I

.field final mPowerGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffTimeoutMs:I

.field mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/power/WakefulnessSessionObserver;)Lcom/android/server/power/WakefulnessSessionObserver$Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/WakefulnessSessionObserver;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverrideTimeoutMs(Lcom/android/server/power/WakefulnessSessionObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPhysicalDisplayPortId(Lcom/android/server/power/WakefulnessSessionObserver;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->getPhysicalDisplayPortId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetScreenOffTimeout(Lcom/android/server/power/WakefulnessSessionObserver;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/WakefulnessSessionObserver;->getScreenOffTimeout()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/WakefulnessSessionObserver$Injector;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/power/WakefulnessSessionObserver$Injector;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 162
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    .line 165
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    .line 173
    if-nez p2, :cond_0

    .line 174
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$Injector;

    invoke-direct {v1}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;-><init>()V

    move-object p2, v1

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;->getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 179
    nop

    .line 180
    invoke-virtual {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;->getWakefulnessSessionFrameworkStatsLogger()Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    .line 181
    invoke-virtual {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;->getClock()Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Clock;

    .line 182
    invoke-virtual {p2}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    .line 183
    iget-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/power/WakefulnessSessionObserver;->updateSettingScreenOffTimeout(Landroid/content/Context;)V

    .line 186
    :try_start_0
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;Lcom/android/server/power/WakefulnessSessionObserver-IA;)V

    .line 187
    .local v1, "observer":Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "WakefulnessSessionObserver"

    invoke-interface {v2, v1, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "observer":Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;
    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    .line 195
    iget-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 197
    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/WakefulnessSessionObserver$1;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/WakefulnessSessionObserver$1;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;Landroid/os/Handler;)V

    .line 196
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 207
    invoke-direct {p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver;->getPhysicalDisplayPortId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    .line 208
    invoke-direct {p0}, Lcom/android/server/power/WakefulnessSessionObserver;->registerDisplayListener()V

    .line 209
    iget-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 212
    return-void
.end method

.method private getPhysicalDisplayPortId(I)I
    .locals 2
    .param p1, "displayId"    # I

    .line 354
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_0

    .line 355
    const/4 v0, -0x1

    return v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 358
    .local v0, "display":Landroid/view/DisplayInfo;
    iget-object v1, v0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    check-cast v1, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v1

    return v1
.end method

.method private getScreenOffTimeout()I
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    monitor-exit v0

    return v1

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerDisplayListener()V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 216
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_0

    .line 217
    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/WakefulnessSessionObserver$2;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;)V

    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 330
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 331
    const-string v0, "Wakefulness Session Observer:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "override timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 335
    .local v0, "indentingPrintWriter":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 336
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v2, v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 339
    .end local v1    # "idx":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 340
    return-void
.end method

.method public notifyUserActivity(JII)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "powerGroupId"    # I
    .param p4, "event"    # I

    .line 250
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v1, p0, p3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->notifyUserActivity(JI)V

    .line 254
    return-void
.end method

.method public onScreenPolicyUpdate(JII)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "powerGroupId"    # I
    .param p4, "newPolicy"    # I

    .line 264
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v1, p0, p3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->onScreenPolicyUpdate(JI)V

    .line 268
    return-void
.end method

.method public onWakeLockAcquired(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 294
    const v0, 0xffff

    and-int/2addr v0, p1

    .line 295
    .local v0, "maskedFlag":I
    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 296
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v2}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->acquireTimeoutOverrideWakeLock()V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "idx":I
    :cond_0
    return-void
.end method

.method public onWakeLockReleased(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "releaseReason"    # I

    .line 310
    const v0, 0xffff

    and-int/2addr v0, p1

    .line 311
    .local v0, "maskedFlag":I
    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 312
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v2, p2}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->releaseTimeoutOverrideWakeLock(I)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "idx":I
    :cond_0
    return-void
.end method

.method public onWakefulnessChangeStarted(IIIJ)V
    .locals 2
    .param p1, "powerGroupId"    # I
    .param p2, "wakefulness"    # I
    .param p3, "changeReason"    # I
    .param p4, "eventTime"    # J

    .line 281
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->onWakefulnessChangeStarted(IIJ)V

    .line 286
    return-void
.end method

.method public removePowerGroup(I)V
    .locals 1
    .param p1, "powerGroupId"    # I

    .line 324
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 327
    :cond_0
    return-void
.end method

.method updateSettingScreenOffTimeout(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 344
    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    nop

    .line 346
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    .line 345
    const/16 v3, 0x3a98

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    .line 350
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
