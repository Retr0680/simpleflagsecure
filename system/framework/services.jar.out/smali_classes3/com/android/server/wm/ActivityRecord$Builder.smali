.class Lcom/android/server/wm/ActivityRecord$Builder;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mCallerApp:Lcom/android/server/wm/WindowProcessController;

.field private mComponentSpecified:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCreateTime:J

.field private mIntent:Landroid/content/Intent;

.field private mLaunchedFromFeature:Ljava/lang/String;

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromPid:I

.field private mLaunchedFromUid:I

.field private mOptions:Landroid/app/ActivityOptions;

.field private mPersistentState:Landroid/os/PersistableBundle;

.field private mRequestCode:I

.field private mResolvedType:Ljava/lang/String;

.field private mResultTo:Lcom/android/server/wm/ActivityRecord;

.field private mResultWho:Ljava/lang/String;

.field private mRootVoiceInteraction:Z

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;


# direct methods
.method static bridge synthetic -$$Nest$msetCreateTime(Lcom/android/server/wm/ActivityRecord$Builder;J)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$Builder;->setCreateTime(J)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetPersistentState(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$Builder;->setPersistentState(Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetTaskDescription(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord$Builder;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10248
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10249
    return-void
.end method

.method private setCreateTime(J)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "createTime"    # J

    .line 10342
    iput-wide p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mCreateTime:J

    .line 10343
    return-object p0
.end method

.method private setPersistentState(Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "persistentState"    # Landroid/os/PersistableBundle;

    .line 10332
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mPersistentState:Landroid/os/PersistableBundle;

    .line 10333
    return-object p0
.end method

.method private setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 10337
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 10338
    return-object p0
.end method


# virtual methods
.method build()Lcom/android/server/wm/ActivityRecord;
    .locals 28

    .line 10347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 10348
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mConfiguration:Landroid/content/res/Configuration;

    .line 10350
    :cond_0
    new-instance v2, Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    iget v5, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromPid:I

    iget v6, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromUid:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromFeature:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mIntent:Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mResolvedType:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v13, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mResultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mResultWho:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mRequestCode:I

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mComponentSpecified:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mRootVoiceInteraction:Z

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mPersistentState:Landroid/os/PersistableBundle;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v23, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/android/server/wm/ActivityRecord$Builder;->mCreateTime:J

    const/16 v25, 0x0

    move-wide/from16 v26, v1

    move-object/from16 v2, v22

    move-object/from16 v22, v23

    move-wide/from16 v23, v26

    invoke-direct/range {v2 .. v25}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;JLcom/android/server/wm/ActivityRecord-IA;)V

    return-object v2
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 10287
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 10288
    return-object p0
.end method

.method setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 10317
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mOptions:Landroid/app/ActivityOptions;

    .line 10318
    return-object p0
.end method

.method setCaller(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "caller"    # Lcom/android/server/wm/WindowProcessController;

    .line 10252
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 10253
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "componentSpecified"    # Z

    .line 10307
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mComponentSpecified:Z

    .line 10308
    return-object p0
.end method

.method setConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 10322
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mConfiguration:Landroid/content/res/Configuration;

    .line 10323
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 10277
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mIntent:Landroid/content/Intent;

    .line 10278
    return-object p0
.end method

.method setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "fromFeature"    # Ljava/lang/String;

    .line 10272
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromFeature:Ljava/lang/String;

    .line 10273
    return-object p0
.end method

.method setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "fromPackage"    # Ljava/lang/String;

    .line 10267
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromPackage:Ljava/lang/String;

    .line 10268
    return-object p0
.end method

.method setLaunchedFromPid(I)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "pid"    # I

    .line 10257
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromPid:I

    .line 10258
    return-object p0
.end method

.method setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "uid"    # I

    .line 10262
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mLaunchedFromUid:I

    .line 10263
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "reqCode"    # I

    .line 10302
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mRequestCode:I

    .line 10303
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "resolvedType"    # Ljava/lang/String;

    .line 10282
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mResolvedType:Ljava/lang/String;

    .line 10283
    return-object p0
.end method

.method setResultTo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "resultTo"    # Lcom/android/server/wm/ActivityRecord;

    .line 10292
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mResultTo:Lcom/android/server/wm/ActivityRecord;

    .line 10293
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 10297
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mResultWho:Ljava/lang/String;

    .line 10298
    return-object p0
.end method

.method setRootVoiceInteraction(Z)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "rootVoiceInteraction"    # Z

    .line 10312
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mRootVoiceInteraction:Z

    .line 10313
    return-object p0
.end method

.method setSourceRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;
    .locals 0
    .param p1, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 10327
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Builder;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10328
    return-object p0
.end method
