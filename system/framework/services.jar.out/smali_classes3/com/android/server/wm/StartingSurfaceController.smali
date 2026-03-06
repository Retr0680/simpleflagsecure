.class public Lcom/android/server/wm/StartingSurfaceController;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StartingSurfaceController$StartingSurface;,
        Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
    }
.end annotation


# static fields
.field private static final ALLOW_COPY_SOLID_COLOR_VIEW:J = 0xc45e600L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDeferringAddStartActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferringAddStartingWindow:Z

.field mInitNewTask:Z

.field mInitProcessRunning:Z

.field mInitTaskSwitch:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 80
    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SplashScreenExceptionList;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    .line 81
    return-void
.end method

.method private addDeferringRecord(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "deferring"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "isTaskSwitch"    # Z
    .param p5, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    .line 209
    iput-boolean p3, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    .line 210
    iput-boolean p4, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    invoke-direct {v1, p1, p2, p5}, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method static makeStartingWindowTypeParameter(ZZZZZZZZIZLjava/lang/String;I)I
    .locals 4
    .param p0, "newTask"    # Z
    .param p1, "taskSwitch"    # Z
    .param p2, "processRunning"    # Z
    .param p3, "allowTaskSnapshot"    # Z
    .param p4, "activityCreated"    # Z
    .param p5, "isSolidColor"    # Z
    .param p6, "useLegacy"    # Z
    .param p7, "activityDrawn"    # Z
    .param p8, "startingWindowType"    # I
    .param p9, "appPrefersIcon"    # Z
    .param p10, "packageName"    # Ljava/lang/String;
    .param p11, "userId"    # I

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "parameter":I
    if-eqz p0, :cond_0

    .line 108
    or-int/lit8 v0, v0, 0x1

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    .line 111
    or-int/lit8 v0, v0, 0x2

    .line 113
    :cond_1
    if-eqz p2, :cond_2

    .line 114
    or-int/lit8 v0, v0, 0x4

    .line 116
    :cond_2
    if-eqz p3, :cond_3

    .line 117
    or-int/lit8 v0, v0, 0x8

    .line 119
    :cond_3
    if-nez p4, :cond_4

    const/4 v1, 0x1

    if-ne p8, v1, :cond_5

    .line 120
    :cond_4
    or-int/lit8 v0, v0, 0x10

    .line 122
    :cond_5
    if-eqz p5, :cond_6

    .line 123
    or-int/lit8 v0, v0, 0x20

    .line 125
    :cond_6
    if-eqz p6, :cond_7

    .line 126
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 128
    :cond_7
    if-eqz p7, :cond_8

    .line 129
    or-int/lit8 v0, v0, 0x40

    .line 131
    :cond_8
    const/4 v1, 0x2

    nop

    if-ne p8, v1, :cond_9

    .line 133
    invoke-static {p11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 132
    const-wide/32 v2, 0xc45e600

    invoke-static {v2, v3, p10, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 134
    or-int/lit16 v0, v0, 0x80

    .line 136
    :cond_9
    if-eqz p9, :cond_a

    .line 137
    or-int/lit16 v0, v0, 0x200

    .line 139
    :cond_a
    return v0
.end method

.method private showStartingWindowFromDeferringActivities(Landroid/app/ActivityOptions;)V
    .locals 12
    .param p1, "topOptions"    # Landroid/app/ActivityOptions;

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    .line 220
    .local v1, "next":Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
    iget-object v2, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_0

    .line 221
    sget-object v2, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No task exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    .line 222
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object v11, p1

    goto :goto_1

    .line 225
    :cond_0
    iget-object v4, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mPrev:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v6, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    iget-boolean v7, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    iget-boolean v8, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    const/4 v9, 0x1

    iget-object v10, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mSource:Lcom/android/server/wm/ActivityRecord;

    move-object v11, p1

    .end local p1    # "topOptions":Landroid/app/ActivityOptions;
    .local v11, "topOptions":Landroid/app/ActivityOptions;
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 228
    iget-object p1, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p1, :cond_1

    .line 229
    goto :goto_2

    .line 218
    .end local v1    # "next":Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    move-object p1, v11

    goto :goto_0

    .end local v11    # "topOptions":Landroid/app/ActivityOptions;
    .restart local p1    # "topOptions":Landroid/app/ActivityOptions;
    :cond_2
    move-object v11, p1

    .line 232
    .end local v0    # "i":I
    .end local p1    # "topOptions":Landroid/app/ActivityOptions;
    .restart local v11    # "topOptions":Landroid/app/ActivityOptions;
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 233
    return-void
.end method


# virtual methods
.method beginDeferAddStartingWindow()V
    .locals 1

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 244
    return-void
.end method

.method createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 4
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "theme"    # I

    .line 84
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 85
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 87
    .local v1, "controller":Lcom/android/server/wm/TaskOrganizerController;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    new-instance v2, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    return-object v2

    .line 91
    :cond_0
    return-object v2
.end method

.method createTaskSnapshotSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "taskSnapshot"    # Landroid/window/TaskSnapshot;

    .line 143
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 144
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 145
    sget-object v2, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskSnapshotSurface.create: Failed to find task for activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v1

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopFullscreenMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 152
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_1

    .line 153
    sget-object v3, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskSnapshotSurface.create: no main window in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 156
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 161
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p1, v5}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 166
    .local v3, "controller":Lcom/android/server/wm/TaskOrganizerController;
    invoke-virtual {v3, v0, p1, v5, p2}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    new-instance v1, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object v4

    invoke-direct {v1, p0, v0, v4}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    return-object v1

    .line 169
    :cond_3
    return-object v1
.end method

.method endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "topOptions"    # Landroid/app/ActivityOptions;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/wm/StartingSurfaceController;->showStartingWindowFromDeferringActivities(Landroid/app/ActivityOptions;)V

    .line 252
    return-void
.end method

.method isExceptionApp(Ljava/lang/String;ILjava/util/function/Supplier;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 99
    .local p3, "infoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SplashScreenExceptionList;->isException(Ljava/lang/String;ILjava/util/function/Supplier;)Z

    move-result v0

    return v0
.end method

.method showStartingWindow(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .locals 6
    .param p1, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "isTaskSwitch"    # Z
    .param p5, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 191
    iget-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/StartingSurfaceController;->addDeferringRecord(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_0

    .line 194
    :cond_0
    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    .end local p1    # "target":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "prev":Lcom/android/server/wm/ActivityRecord;
    .end local p3    # "newTask":Z
    .end local p4    # "isTaskSwitch":Z
    .end local p5    # "source":Lcom/android/server/wm/ActivityRecord;
    .local v0, "target":Lcom/android/server/wm/ActivityRecord;
    .local v1, "prev":Lcom/android/server/wm/ActivityRecord;
    .local v2, "newTask":Z
    .local v3, "isTaskSwitch":Z
    .local v5, "source":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V

    .line 197
    .end local v0    # "target":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "prev":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "newTask":Z
    .end local v3    # "isTaskSwitch":Z
    .end local v5    # "source":Lcom/android/server/wm/ActivityRecord;
    .restart local p1    # "target":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "prev":Lcom/android/server/wm/ActivityRecord;
    .restart local p3    # "newTask":Z
    .restart local p4    # "isTaskSwitch":Z
    .restart local p5    # "source":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    return-void
.end method
