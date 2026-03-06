.class Lcom/android/server/display/ExternalDisplayPolicy;
.super Ljava/lang/Object;
.source "ExternalDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ExternalDisplayPolicy$Injector;,
        Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final ENABLE_ON_CONNECT:Ljava/lang/String; = "persist.sys.display.enable_on_connect.external"

.field private static final TAG:Ljava/lang/String; = "ExternalDisplayPolicy"


# instance fields
.field private final mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field private final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field private final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

.field private mIsBootCompleted:Z

.field private final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field private volatile mStatus:I

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method public static synthetic $r8$lambda$2e524ye28McdF74rNJXrAjDbcko(Lcom/android/server/display/ExternalDisplayPolicy;Lcom/android/server/display/LogicalDisplay;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->disableExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/server/display/ExternalDisplayPolicy;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStatus(Lcom/android/server/display/ExternalDisplayPolicy;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableExternalDisplays(Lcom/android/server/display/ExternalDisplayPolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->disableExternalDisplays()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-string v0, "ExternalDisplayPolicy"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy$Injector;)V
    .locals 1
    .param p1, "injector"    # Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 118
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 120
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 121
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 122
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getDisplayNotificationManager()Lcom/android/server/display/notifications/DisplayNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 124
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getExternalDisplayStatsService()Lcom/android/server/display/ExternalDisplayStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 125
    return-void
.end method

.method private disableExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 4
    .param p1, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 269
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isConnectedDisplayErrorHandlingEnabled()Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_2

    .line 274
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "disableExternalDisplayLocked shouldn\'t be called when the error handling flag is off"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    return-void

    .line 281
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 282
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableExternalDisplayLocked is not allowed: displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isEnabledLocked=false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    return-void

    .line 290
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 291
    const-string v0, "External display is currently not allowed and is getting disabled."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 297
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayDisabled(I)V

    .line 299
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableExternalDisplayLocked complete displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_6
    return-void
.end method

.method private disableExternalDisplays()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 335
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 2
    .param p0, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 64
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerThermalServiceListener(Landroid/os/IThermalEventListener$Stub;)Z
    .locals 5
    .param p1, "listener"    # Landroid/os/IThermalEventListener$Stub;

    .line 315
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 316
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x0

    const-string v2, "ExternalDisplayPolicy"

    if-nez v0, :cond_0

    .line 317
    const-string v3, "Could not observe thermal status. Service not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v1

    .line 321
    :cond_0
    const/4 v3, 0x3

    :try_start_0
    invoke-interface {v0, p1, v3}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    nop

    .line 326
    sget-boolean v1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 327
    const-string/jumbo v1, "registerThermalServiceListener complete."

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 322
    :catch_0
    move-exception v3

    .line 323
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to register thermal status listener"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    return v1
.end method


# virtual methods
.method handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 4
    .param p1, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 184
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_0

    .line 185
    const-string/jumbo v0, "handleExternalDisplayConnectedLocked called for non-external display"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayConnected(Lcom/android/server/display/LogicalDisplay;)V

    .line 196
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_3

    .line 197
    :cond_2
    const-string/jumbo v0, "persist.sys.display.enable_on_connect.external"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    nop

    if-nez v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 198
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->canHostTasksLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 210
    const-string/jumbo v0, "handleExternalDisplayConnectedLocked: External display can not be used because it is currently not allowed."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0, p1, v2}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 218
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleExternalDisplayConnectedLocked complete displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_6
    return-void

    .line 200
    :cond_7
    :goto_0
    const-string v0, "External display is enabled by default, bypassing user consent."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {v0, p1, v2}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 202
    return-void
.end method

.method handleLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 2
    .param p1, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 242
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayAdded(I)V

    .line 247
    return-void
.end method

.method handleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 3
    .param p1, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 230
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 231
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayDisconnected(I)V

    .line 236
    return-void
.end method

.method isDisplayReadyForMirroring(I)Z
    .locals 6
    .param p1, "displayId"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isWaitingConfirmationBeforeMirroringEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 340
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "ExternalDisplayPolicy"

    const-string/jumbo v2, "isDisplayReadyForMirroring: mirroring CONFIRMED -  flag \'waiting for confirmation before mirroring\' is disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    return v1

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 349
    sget-boolean v1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 350
    const-string v1, "ExternalDisplayPolicy"

    const-string/jumbo v2, "isDisplayReadyForMirroring: mirroring is not confirmed - boot is in progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 353
    :cond_2
    :goto_0
    monitor-exit v0

    return v3

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    .line 357
    .local v2, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-nez v2, :cond_5

    .line 358
    sget-boolean v1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 359
    const-string v1, "ExternalDisplayPolicy"

    const-string/jumbo v4, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay is null"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_4
    monitor-exit v0

    return v3

    .line 365
    :cond_5
    invoke-static {v2}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 366
    sget-boolean v1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 367
    const-string v1, "ExternalDisplayPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_6
    monitor-exit v0

    return v3

    .line 374
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v4

    if-nez v4, :cond_9

    .line 375
    sget-boolean v1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 376
    const-string v1, "ExternalDisplayPolicy"

    const-string/jumbo v4, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay is disabled"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_8
    monitor-exit v0

    return v3

    .line 374
    :cond_9
    nop

    .line 381
    .end local v2    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    monitor-exit v0

    .line 383
    return v1

    .line 381
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isExternalDisplayAllowed()Z
    .locals 2

    .line 310
    iget v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onBootCompleted()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 132
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    .line 133
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 134
    .local v2, "displayId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 135
    .local v3, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_1

    .line 143
    .end local v2    # "displayId":Ljava/lang/Integer;
    .end local v3    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 138
    :cond_0
    :goto_1
    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isConnectedDisplayErrorHandlingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 147
    const-string v0, "ExternalDisplayPolicy"

    const-string v1, "ConnectedDisplayErrorHandlingEnabled is not enabled on your device: cannot register thermal listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3
    return-void

    .line 153
    :cond_4
    new-instance v0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;Lcom/android/server/display/ExternalDisplayPolicy-IA;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/ExternalDisplayPolicy;->registerThermalServiceListener(Landroid/os/IThermalEventListener$Stub;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 154
    const-string v0, "ExternalDisplayPolicy"

    const-string v1, "Failed to register thermal listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_5
    return-void

    .line 143
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onPresentation(IZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "isShown"    # Z

    .line 253
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 255
    .local v1, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_1

    .line 258
    .end local v1    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-eqz p2, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onPresentationWindowAdded(I)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onPresentationWindowRemoved(I)V

    .line 265
    :goto_0
    return-void

    .line 258
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 256
    .restart local v1    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    .line 258
    .end local v1    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 3
    .param p1, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "enabled"    # Z

    .line 163
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_0

    .line 164
    const-string/jumbo v0, "setExternalDisplayEnabledLocked called for non external display"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 168
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const-string/jumbo v0, "setExternalDisplayEnabledLocked: External display can not be enabled because it is currently not allowed."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 176
    return-void
.end method
