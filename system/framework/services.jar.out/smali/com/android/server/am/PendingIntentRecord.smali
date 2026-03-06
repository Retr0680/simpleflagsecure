.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;,
        Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;,
        Lcom/android/server/am/PendingIntentRecord$CancellationReason;
    }
.end annotation


# static fields
.field public static final CANCEL_REASON_HOSTING_ACTIVITY_DESTROYED:I = 0x10

.field public static final CANCEL_REASON_NULL:I = 0x0

.field public static final CANCEL_REASON_ONE_SHOT_SENT:I = 0x40

.field public static final CANCEL_REASON_OWNER_CANCELED:I = 0x8

.field public static final CANCEL_REASON_OWNER_FORCE_STOPPED:I = 0x4

.field public static final CANCEL_REASON_OWNER_UNINSTALLED:I = 0x2

.field public static final CANCEL_REASON_SUPERSEDED:I = 0x20

.field public static final CANCEL_REASON_USER_STOPPED:I = 0x1

.field private static final DEFAULT_RESCIND_BAL_PRIVILEGES_FROM_PENDING_INTENT_SENDER:J = 0xe94e127L

.field public static final FLAG_ACTIVITY_SENDER:I = 0x1

.field public static final FLAG_BROADCAST_SENDER:I = 0x2

.field public static final FLAG_SERVICE_SENDER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field cancelReason:I

.field canceled:Z

.field final controller:Lcom/android/server/am/PendingIntentController;

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowlistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public static synthetic $r8$lambda$n7a96RwVvewtpifhQ2aQt1qSbXo(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1
    .param p1, "_controller"    # Lcom/android/server/am/PendingIntentController;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .line 292
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 124
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    .line 132
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 134
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 293
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 294
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 295
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 296
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 297
    return-void
.end method

.method static cancelReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cancelReason"    # I

    .line 807
    sparse-switch p0, :sswitch_data_0

    .line 816
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 815
    :sswitch_0
    const-string v0, "ONE_SHOT_SENT"

    goto :goto_0

    .line 814
    :sswitch_1
    const-string v0, "SUPERSEDED"

    goto :goto_0

    .line 813
    :sswitch_2
    const-string v0, "HOSTING_ACTIVITY_DESTROYED"

    goto :goto_0

    .line 812
    :sswitch_3
    const-string v0, "OWNER_CANCELED"

    goto :goto_0

    .line 811
    :sswitch_4
    const-string v0, "OWNER_FORCE_STOPPED"

    goto :goto_0

    .line 810
    :sswitch_5
    const-string v0, "OWNER_UNINSTALLED"

    goto :goto_0

    .line 809
    :sswitch_6
    const-string v0, "USER_STOPPED"

    goto :goto_0

    .line 808
    :sswitch_7
    const-string v0, "NULL"

    .line 807
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method private completeFinalize()V
    .locals 4

    .line 796
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 798
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v2, p0}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    goto :goto_0

    .line 802
    .end local v1    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 803
    return-void

    .line 802
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createSafeActivityOptionsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "optionsBundle"    # Landroid/os/Bundle;

    .line 750
    nop

    .line 751
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBackgroundStartPrivilegesAllowedByCaller(Landroid/app/ActivityOptions;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .locals 1
    .param p0, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 397
    if-nez p0, :cond_0

    .line 400
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    return-object v0

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    return-object v0
.end method

.method private static getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .locals 2
    .param p0, "options"    # Landroid/os/Bundle;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 408
    if-nez p0, :cond_0

    .line 409
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    const-string v0, "android.pendingIntent.backgroundActivityAllowed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 422
    :pswitch_0
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object v0

    .line 414
    :pswitch_1
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object v0

    .line 416
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;
    .locals 1
    .param p2, "allowlistToken"    # Landroid/os/IBinder;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/IBinder;",
            "Landroid/os/Bundle;",
            "I)",
            "Landroid/app/BackgroundStartPrivileges;"
        }
    .end annotation

    .line 772
    .local p1, "allowedTokenSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/IBinder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-static {p2}, Landroid/app/BackgroundStartPrivileges;->allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    return-object v0

    .line 777
    :cond_0
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    if-eq v0, p4, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    const/4 v0, 0x0

    invoke-static {p3, p4, v0}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    return-object v0

    .line 780
    :cond_1
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object v0
.end method

.method public static getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .locals 3
    .param p0, "callingUid"    # I
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 439
    if-eqz p0, :cond_0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1

    :cond_0
    goto :goto_1

    .line 443
    :cond_1
    const-wide/32 v0, 0xe94e127

    if-eqz p1, :cond_2

    .line 445
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 443
    invoke-static {v0, v1, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    goto :goto_0

    .line 445
    :cond_2
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    :goto_0
    nop

    .line 447
    .local v0, "isChangeEnabledForApp":Z
    if-eqz v0, :cond_3

    .line 448
    sget-object v1, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    return-object v1

    .line 450
    :cond_3
    sget-object v1, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object v1

    .line 441
    .end local v0    # "isChangeEnabledForApp":Z
    :goto_1
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    return-object v0
.end method


# virtual methods
.method clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 334
    if-nez p1, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 340
    .local v0, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    if-nez v1, :cond_1

    .line 342
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    .line 345
    .end local v0    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :cond_1
    return-void
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 366
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 367
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 821
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 822
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    const-string v0, " featureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 828
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 831
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 832
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 835
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_6

    .line 839
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 840
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 841
    const-string v0, " cancelReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    invoke-static {v0}, Lcom/android/server/am/PendingIntentRecord;->cancelReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 844
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    const-string v0, "allowlistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 847
    if-eqz v0, :cond_7

    .line 848
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 851
    .local v1, "entry":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    iget-wide v2, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 854
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 856
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v3}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    .end local v1    # "entry":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    nop

    .line 861
    .end local v0    # "i":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 863
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_a

    .line 864
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 866
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 870
    .end local v0    # "i":I
    :cond_a
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 786
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 791
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 792
    nop

    .line 793
    return-void

    .line 791
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 792
    throw v0
.end method

.method getAllowlistDurationLocked(Landroid/os/IBinder;)Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .locals 1
    .param p1, "allowlistToken"    # Landroid/os/IBinder;

    .line 317
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    return-object v0
.end method

.method getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;
    .locals 1
    .param p1, "allowlistToken"    # Landroid/os/IBinder;

    .line 764
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-static {p1}, Landroid/app/BackgroundStartPrivileges;->allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_0
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 764
    :goto_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 348
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 352
    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "allowlistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 372
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 374
    return-void
.end method

.method public send(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "allowlistToken"    # Landroid/os/IBinder;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "requiredPermission"    # Ljava/lang/String;
    .param p8, "options"    # Landroid/os/Bundle;

    .line 379
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 381
    return-void
.end method

.method public sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 14
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "allowlistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "flagsMask"    # I
    .param p11, "flagsValues"    # I
    .param p12, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 37
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "allowlistToken"    # Landroid/os/IBinder;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "requiredPermission"    # Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "flagsMask"    # I
    .param p12, "flagsValues"    # I
    .param p13, "options"    # Landroid/os/Bundle;

    .line 475
    move-object/from16 v12, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    move-object/from16 v1, p13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 476
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 478
    .local v3, "callingPid":I
    const/4 v0, 0x1

    if-eqz v14, :cond_0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 479
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 481
    :cond_1
    const/4 v2, 0x0

    .line 482
    .local v2, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    const/4 v5, 0x0

    .line 483
    .local v5, "finalIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 484
    .local v6, "allIntents":[Landroid/content/Intent;
    const/4 v7, 0x0

    .line 485
    .local v7, "allResolvedTypes":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 486
    .local v8, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 487
    :try_start_0
    iget-boolean v10, v12, Lcom/android/server/am/PendingIntentRecord;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_26

    const/16 v11, -0x60

    const/4 v13, 0x2

    if-eqz v10, :cond_3

    .line 488
    :try_start_1
    iget v0, v12, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    const/4 v10, 0x4

    if-ne v0, v10, :cond_2

    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 489
    invoke-virtual {v0, v4}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    if-ne v0, v13, :cond_2

    .line 491
    const-string v0, "app.value_force_stop_cancelled_pi_sent_from_top_per_caller"

    invoke-static {v0, v4}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 494
    const-string v0, "app.value_force_stop_cancelled_pi_sent_from_top_per_owner"

    iget v10, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v0, v10}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    move-object/from16 v21, p4

    move/from16 v27, p11

    move/from16 v28, p12

    move v11, v4

    move-object v1, v12

    move v12, v3

    goto/16 :goto_1c

    .line 498
    :cond_2
    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v11

    .line 501
    :cond_3
    :try_start_2
    iput-boolean v0, v12, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 502
    iget-object v10, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v10, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_26

    const/high16 v16, 0x40000000    # 2.0f

    and-int v10, v10, v16

    const/16 v11, 0x40

    if-eqz v10, :cond_4

    .line 503
    :try_start_3
    iget-object v10, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v10, v12, v0, v11}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    :cond_4
    :try_start_4
    iget-object v10, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v10, v10, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_26

    if-eqz v10, :cond_5

    :try_start_5
    new-instance v10, Landroid/content/Intent;

    iget-object v11, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v11, v11, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_6
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_26

    :goto_1
    move-object v11, v10

    .line 508
    .end local v5    # "finalIntent":Landroid/content/Intent;
    .local v11, "finalIntent":Landroid/content/Intent;
    :try_start_7
    iget-object v5, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_25

    const/high16 v10, 0x4000000

    and-int/2addr v5, v10

    if-eqz v5, :cond_6

    move v5, v0

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 509
    .local v5, "immutable":Z
    :goto_2
    if-nez v5, :cond_9

    .line 510
    if-eqz v14, :cond_8

    .line 511
    :try_start_8
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v11, v14, v0}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v0

    .line 512
    .local v0, "changes":I
    and-int/lit8 v19, v0, 0x2

    if-nez v19, :cond_7

    .line 513
    iget-object v13, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v13, v13, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local p4    # "resolvedType":Ljava/lang/String;
    .local v13, "resolvedType":Ljava/lang/String;
    goto :goto_3

    .line 579
    .end local v0    # "changes":I
    .end local v5    # "immutable":Z
    .end local v13    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v21, p4

    move/from16 v27, p11

    move/from16 v28, p12

    move-object v5, v11

    move-object v1, v12

    move v12, v3

    move v11, v4

    goto/16 :goto_1c

    .line 512
    .restart local v0    # "changes":I
    .restart local v5    # "immutable":Z
    :cond_7
    move-object/from16 v13, p4

    .line 515
    .end local v0    # "changes":I
    .end local p4    # "resolvedType":Ljava/lang/String;
    .restart local v13    # "resolvedType":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 516
    .end local v13    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    :cond_8
    :try_start_9
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local p4    # "resolvedType":Ljava/lang/String;
    .local v0, "resolvedType":Ljava/lang/String;
    move-object v13, v0

    .line 518
    .end local v0    # "resolvedType":Ljava/lang/String;
    .restart local v13    # "resolvedType":Ljava/lang/String;
    :goto_4
    move/from16 v10, p11

    and-int/lit16 v10, v10, -0xc4

    .line 519
    .end local p11    # "flagsMask":I
    .local v10, "flagsMask":I
    and-int v20, p12, v10

    .line 520
    .end local p12    # "flagsValues":I
    .local v20, "flagsValues":I
    :try_start_a
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v21

    not-int v0, v10

    and-int v0, v21, v0

    or-int v0, v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v21, v13

    move/from16 v28, v20

    move/from16 v27, v10

    goto :goto_5

    .line 579
    .end local v5    # "immutable":Z
    :catchall_2
    move-exception v0

    move/from16 v27, v10

    move-object v5, v11

    move-object v1, v12

    move-object/from16 v21, v13

    move/from16 v28, v20

    move v12, v3

    move v11, v4

    goto/16 :goto_1c

    .end local v10    # "flagsMask":I
    .end local v13    # "resolvedType":Ljava/lang/String;
    .end local v20    # "flagsValues":I
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p11    # "flagsMask":I
    .restart local p12    # "flagsValues":I
    :catchall_3
    move-exception v0

    move/from16 v10, p11

    move-object/from16 v21, p4

    move/from16 v28, p12

    move/from16 v27, v10

    move-object v5, v11

    move-object v1, v12

    move v12, v3

    move v11, v4

    goto/16 :goto_1c

    .line 522
    .restart local v5    # "immutable":Z
    :cond_9
    move/from16 v10, p11

    :try_start_b
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_24

    .end local p4    # "resolvedType":Ljava/lang/String;
    .restart local v0    # "resolvedType":Ljava/lang/String;
    move/from16 v28, p12

    move-object/from16 v21, v0

    move/from16 v27, v10

    .line 527
    .end local v0    # "resolvedType":Ljava/lang/String;
    .end local p11    # "flagsMask":I
    .end local p12    # "flagsValues":I
    .local v21, "resolvedType":Ljava/lang/String;
    .local v27, "flagsMask":I
    .local v28, "flagsValues":I
    :goto_5
    :try_start_c
    invoke-static {v1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_23

    move-object v10, v0

    .line 528
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_c

    .line 529
    :try_start_d
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v0

    if-eqz v0, :cond_b

    .line 531
    const-string v0, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object/from16 v20, v2

    .end local v2    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v20, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :try_start_e
    const-string v2, "Resetting option setPendingIntentCreatorBackgroundActivityStartMode("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to SYSTEM_DEFINED from the options provided by the pending intent sender ("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") because this option is meant for the pending intent creator"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 540
    move v13, v5

    move-object v2, v6

    .end local v5    # "immutable":Z
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .local v2, "allIntents":[Landroid/content/Intent;
    .local v13, "immutable":Z
    const-wide/32 v5, 0x131cf49a

    :try_start_f
    invoke-static {v5, v6, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_a

    .line 546
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    goto :goto_6

    .line 579
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    .end local v13    # "immutable":Z
    :catchall_4
    move-exception v0

    move-object v6, v2

    move-object v5, v11

    move-object v1, v12

    move-object/from16 v2, v20

    move v12, v3

    move v11, v4

    goto/16 :goto_1c

    .line 542
    .restart local v10    # "opts":Landroid/app/ActivityOptions;
    .restart local v13    # "immutable":Z
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "pendingIntentCreatorBackgroundActivityStartMode must not be set when sending a PendingIntent"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "allIntents":[Landroid/content/Intent;
    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v7    # "allResolvedTypes":[Ljava/lang/String;
    .end local v8    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v11    # "finalIntent":Landroid/content/Intent;
    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v27    # "flagsMask":I
    .end local v28    # "flagsValues":I
    .end local p0    # "this":Lcom/android/server/am/PendingIntentRecord;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "code":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p5    # "allowlistToken":Landroid/os/IBinder;
    .end local p6    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local p7    # "requiredPermission":Ljava/lang/String;
    .end local p8    # "resultTo":Landroid/os/IBinder;
    .end local p9    # "resultWho":Ljava/lang/String;
    .end local p10    # "requestCode":I
    .end local p13    # "options":Landroid/os/Bundle;
    throw v0

    .line 579
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    .end local v13    # "immutable":Z
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    .restart local v7    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v8    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v27    # "flagsMask":I
    .restart local v28    # "flagsValues":I
    .restart local p0    # "this":Lcom/android/server/am/PendingIntentRecord;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "code":I
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p5    # "allowlistToken":Landroid/os/IBinder;
    .restart local p6    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .restart local p7    # "requiredPermission":Ljava/lang/String;
    .restart local p8    # "resultTo":Landroid/os/IBinder;
    .restart local p9    # "resultWho":Ljava/lang/String;
    .restart local p10    # "requestCode":I
    .restart local p13    # "options":Landroid/os/Bundle;
    :catchall_5
    move-exception v0

    move-object v2, v6

    move-object v5, v11

    move-object v1, v12

    move-object/from16 v2, v20

    move v12, v3

    move v11, v4

    .end local v6    # "allIntents":[Landroid/content/Intent;
    .restart local v2    # "allIntents":[Landroid/content/Intent;
    goto/16 :goto_1c

    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v2, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    :catchall_6
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v6

    move-object v5, v11

    move-object v1, v12

    move-object/from16 v2, v20

    move v12, v3

    move v11, v4

    .end local v6    # "allIntents":[Landroid/content/Intent;
    .local v2, "allIntents":[Landroid/content/Intent;
    .restart local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto/16 :goto_1c

    .line 529
    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v2, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v5    # "immutable":Z
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    .restart local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_b
    move-object/from16 v20, v2

    move v13, v5

    move-object v2, v6

    .line 549
    .end local v5    # "immutable":Z
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .local v2, "allIntents":[Landroid/content/Intent;
    .restart local v13    # "immutable":Z
    .restart local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :goto_6
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_7

    .line 528
    .end local v13    # "immutable":Z
    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v2, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v5    # "immutable":Z
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    :cond_c
    move-object/from16 v20, v2

    move v13, v5

    move-object v2, v6

    .line 553
    .end local v5    # "immutable":Z
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .local v2, "allIntents":[Landroid/content/Intent;
    .restart local v13    # "immutable":Z
    .restart local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :goto_7
    :try_start_10
    iget-object v5, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_22

    move-object v8, v5

    .line 554
    if-nez v8, :cond_d

    .line 555
    :try_start_11
    new-instance v5, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v5, v10, v3, v4}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v29, v5

    .end local v8    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v5, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    goto :goto_8

    .line 557
    .end local v5    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v8    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :cond_d
    :try_start_12
    invoke-virtual {v8, v10, v3, v4}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;II)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_22

    move-object/from16 v29, v8

    .line 560
    .end local v8    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v29, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_8
    :try_start_13
    iget-object v5, v12, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_21

    if-eqz v5, :cond_e

    .line 561
    :try_start_14
    iget-object v5, v12, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v5, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto :goto_9

    .line 579
    .end local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    .end local v13    # "immutable":Z
    .restart local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :catchall_7
    move-exception v0

    move-object v6, v2

    move-object v5, v11

    move-object v1, v12

    move-object/from16 v2, v20

    move-object/from16 v8, v29

    move v12, v3

    move v11, v4

    goto/16 :goto_1c

    .line 560
    .restart local v10    # "opts":Landroid/app/ActivityOptions;
    .restart local v13    # "immutable":Z
    :cond_e
    move-object/from16 v5, v20

    .line 564
    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :goto_9
    :try_start_15
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_20

    const/4 v8, 0x2

    if-ne v6, v8, :cond_10

    :try_start_16
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v6, :cond_10

    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v6, v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_10

    .line 568
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v6, v6

    new-array v6, v6, [Landroid/content/Intent;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 569
    .end local v2    # "allIntents":[Landroid/content/Intent;
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    :try_start_17
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    .line 570
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v8, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v8, v8

    const/4 v0, 0x0

    invoke-static {v2, v0, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 572
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v8, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v8, v8

    const/4 v0, 0x0

    invoke-static {v2, v0, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    .line 579
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    .end local v13    # "immutable":Z
    :catchall_8
    move-exception v0

    move-object v2, v5

    move-object v5, v11

    move-object v1, v12

    move-object/from16 v8, v29

    move v12, v3

    move v11, v4

    goto/16 :goto_1c

    .line 571
    .restart local v10    # "opts":Landroid/app/ActivityOptions;
    .restart local v13    # "immutable":Z
    :cond_f
    const/4 v0, 0x0

    .line 575
    :goto_a
    array-length v2, v6

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    aput-object v11, v6, v2

    .line 576
    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aput-object v21, v7, v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move-object v13, v6

    move-object/from16 v30, v7

    goto :goto_b

    .line 579
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    .end local v13    # "immutable":Z
    .restart local v2    # "allIntents":[Landroid/content/Intent;
    :catchall_9
    move-exception v0

    move-object v6, v2

    move-object v2, v5

    move-object v5, v11

    move-object v1, v12

    move-object/from16 v8, v29

    move v12, v3

    move v11, v4

    goto/16 :goto_1c

    .line 564
    .restart local v10    # "opts":Landroid/app/ActivityOptions;
    .restart local v13    # "immutable":Z
    :cond_10
    const/4 v0, 0x0

    .line 579
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    .end local v13    # "immutable":Z
    move-object v13, v2

    move-object/from16 v30, v7

    .end local v2    # "allIntents":[Landroid/content/Intent;
    .end local v7    # "allResolvedTypes":[Ljava/lang/String;
    .local v13, "allIntents":[Landroid/content/Intent;
    .local v30, "allResolvedTypes":[Ljava/lang/String;
    :goto_b
    :try_start_18
    monitor-exit v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1f

    .line 585
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_11

    .line 586
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v1, v4}, Landroid/app/ActivityManagerInternal;->enforceBroadcastOptionsPermissions(Landroid/os/Bundle;I)V

    .line 589
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v31

    .line 591
    .local v31, "origId":J
    const/16 v33, 0x0

    .line 593
    .local v33, "res":I
    const/4 v2, 0x5

    if-eqz v5, :cond_17

    .line 594
    :try_start_19
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 595
    .local v6, "tag":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "setPendingIntentAllowlistDuration,reason:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v7, v5, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    if-nez v7, :cond_12

    :try_start_1a
    const-string v7, ""
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto :goto_c

    .line 730
    .end local v6    # "tag":Ljava/lang/StringBuilder;
    :catchall_a
    move-exception v0

    move-object/from16 v34, v5

    move-object v14, v11

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    move v11, v4

    goto/16 :goto_1b

    .line 596
    .restart local v6    # "tag":Ljava/lang/StringBuilder;
    :cond_12
    :try_start_1b
    iget-object v7, v5, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    :goto_c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v7, ",pendingintent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-static {v6, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 599
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    if-eqz v7, :cond_13

    .line 601
    :try_start_1c
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    goto :goto_d

    .line 602
    :cond_13
    :try_start_1d
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    if-eqz v7, :cond_14

    .line 603
    :try_start_1e
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    goto :goto_d

    .line 604
    :cond_14
    :try_start_1f
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    if-eqz v7, :cond_15

    .line 605
    :try_start_20
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 607
    :cond_15
    :goto_d
    :try_start_21
    iget-object v7, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v8, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move v10, v2

    move-object v9, v6

    move-object v2, v7

    .end local v6    # "tag":Ljava/lang/StringBuilder;
    .local v9, "tag":Ljava/lang/StringBuilder;
    iget-wide v6, v5, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    move/from16 v17, v8

    iget v8, v5, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    move-object/from16 v19, v9

    .end local v9    # "tag":Ljava/lang/StringBuilder;
    .local v19, "tag":Ljava/lang/StringBuilder;
    iget v9, v5, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 608
    move/from16 v20, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    .line 607
    move-object/from16 v34, v5

    move/from16 v5, v17

    move/from16 v0, v20

    .end local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v34, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :try_start_22
    invoke-virtual/range {v2 .. v10}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 609
    .end local v19    # "tag":Ljava/lang/StringBuilder;
    :cond_16
    goto :goto_e

    .line 730
    :catchall_b
    move-exception v0

    move-object v14, v11

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    move v11, v4

    goto/16 :goto_1b

    .end local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :catchall_c
    move-exception v0

    move-object/from16 v34, v5

    move-object v14, v11

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    move v11, v4

    .end local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto/16 :goto_1b

    .line 609
    .end local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :cond_17
    move v0, v2

    move-object/from16 v34, v5

    .end local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :try_start_23
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1e

    if-ne v2, v0, :cond_16

    if-eqz v1, :cond_16

    .line 613
    :try_start_24
    new-instance v2, Landroid/app/BroadcastOptions;

    invoke-direct {v2, v1}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v17, v2

    .line 614
    .local v17, "brOptions":Landroid/app/BroadcastOptions;
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_18

    .line 615
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v5, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 616
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v6

    .line 617
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v8

    .line 618
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v9

    .line 619
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object v10

    .line 615
    invoke-virtual/range {v2 .. v10}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    .line 623
    .end local v17    # "brOptions":Landroid/app/BroadcastOptions;
    :cond_18
    :goto_e
    move-object/from16 v35, p1

    .line 624
    .local v35, "finishedReceiverThread":Landroid/app/IApplicationThread;
    if-eqz p6, :cond_19

    const/4 v10, 0x1

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    :goto_f
    move/from16 v36, v10

    .line 625
    .local v36, "sendFinish":Z
    if-eqz p6, :cond_1a

    if-nez v35, :cond_1a

    .line 626
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " requested resultTo without an IApplicationThread!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 630
    :cond_1a
    :try_start_25
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1e

    .line 631
    .local v2, "userId":I
    const/4 v5, -0x2

    if-ne v2, v5, :cond_1b

    .line 632
    :try_start_26
    iget-object v5, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    move v2, v5

    move/from16 v19, v2

    goto :goto_10

    .line 631
    :cond_1b
    move/from16 v19, v2

    .line 638
    .end local v2    # "userId":I
    .local v19, "userId":I
    :goto_10
    :try_start_27
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1e

    packed-switch v2, :pswitch_data_0

    move-object v14, v11

    move-object v1, v12

    move-object/from16 p4, v13

    move/from16 v25, v19

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move-object/from16 v10, v35

    move v12, v3

    move v11, v4

    goto/16 :goto_18

    .line 706
    :pswitch_0
    :try_start_28
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 707
    invoke-direct {v12, v2, v15, v1, v4}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;

    move-result-object v26

    .line 710
    .local v26, "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v5, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v6, v0, :cond_1c

    const/16 v22, 0x1

    goto :goto_11

    :cond_1c
    const/16 v22, 0x0

    :goto_11
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_28 .. :try_end_28} :catch_2
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    move-object/from16 v23, v0

    move-object/from16 v18, v2

    move-object/from16 v24, v6

    move-object/from16 v20, v11

    move/from16 v25, v19

    move/from16 v19, v5

    .end local v11    # "finalIntent":Landroid/content/Intent;
    .end local v19    # "userId":I
    .local v20, "finalIntent":Landroid/content/Intent;
    .local v25, "userId":I
    :try_start_29
    invoke-virtual/range {v18 .. v26}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;)Landroid/content/ComponentName;
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    move-object/from16 v8, v20

    move-object/from16 v17, v21

    .line 718
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v26    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .local v8, "finalIntent":Landroid/content/Intent;
    .local v17, "resolvedType":Ljava/lang/String;
    move v11, v4

    move-object v14, v8

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v21, v17

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move-object/from16 v10, v35

    move v12, v3

    goto/16 :goto_18

    .line 730
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v8, v20

    move-object/from16 v17, v21

    move v11, v4

    move-object v14, v8

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    goto/16 :goto_1b

    .line 716
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_0
    move-exception v0

    move-object/from16 v8, v20

    move-object/from16 v17, v21

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    goto :goto_12

    .line 714
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v8, v20

    move-object/from16 v17, v21

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    goto :goto_13

    .line 730
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .restart local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object v8, v11

    move-object/from16 v17, v21

    move v11, v4

    move-object v14, v8

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    .end local v11    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    goto/16 :goto_1b

    .line 716
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v19    # "userId":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_2
    move-exception v0

    move-object v8, v11

    move/from16 v25, v19

    move-object/from16 v17, v21

    .end local v11    # "finalIntent":Landroid/content/Intent;
    .end local v19    # "userId":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    goto :goto_12

    .line 714
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v25    # "userId":I
    .restart local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v19    # "userId":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v8, v11

    move/from16 v25, v19

    move-object/from16 v17, v21

    .end local v11    # "finalIntent":Landroid/content/Intent;
    .end local v19    # "userId":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    goto :goto_13

    .line 716
    :goto_12
    nop

    .line 717
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    const/16 v33, -0x60

    move v11, v4

    move-object v14, v8

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v21, v17

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move/from16 v13, v33

    move-object/from16 v10, v35

    move v12, v3

    goto/16 :goto_19

    .line 714
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    :goto_13
    nop

    .line 715
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2a
    const-string v2, "ActivityManager"

    const-string v5, "Unable to send startService intent"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    move v11, v4

    move-object v14, v8

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v21, v17

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move-object/from16 v10, v35

    move v12, v3

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_18

    .line 730
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    :catchall_f
    move-exception v0

    move v11, v4

    move-object v14, v8

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v21, v17

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    goto/16 :goto_1b

    .line 673
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v19    # "userId":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :pswitch_1
    move-object v8, v11

    move/from16 v25, v19

    move-object/from16 v17, v21

    .end local v11    # "finalIntent":Landroid/content/Intent;
    .end local v19    # "userId":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v5, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    const/16 v19, -0x1

    move/from16 v23, p2

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v24, v8

    .end local v8    # "finalIntent":Landroid/content/Intent;
    .local v24, "finalIntent":Landroid/content/Intent;
    :try_start_2b
    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    .line 675
    .end local v24    # "finalIntent":Landroid/content/Intent;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    move v11, v4

    move-object v14, v8

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v21, v17

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move-object/from16 v10, v35

    move v12, v3

    goto/16 :goto_18

    .line 730
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .restart local v24    # "finalIntent":Landroid/content/Intent;
    :catchall_10
    move-exception v0

    move-object/from16 v8, v24

    move v11, v4

    move-object v14, v8

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v21, v17

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    .end local v24    # "finalIntent":Landroid/content/Intent;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    goto/16 :goto_1b

    .line 645
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v19    # "userId":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :pswitch_2
    move-object v8, v11

    move/from16 v25, v19

    move-object/from16 v17, v21

    .end local v11    # "finalIntent":Landroid/content/Intent;
    .end local v19    # "userId":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    :try_start_2c
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_a
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    if-eqz v0, :cond_1d

    :try_start_2d
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1d

    .line 646
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v1, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v5, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 651
    invoke-virtual {v12, v15}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v6

    .line 652
    invoke-virtual {v6}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v6
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_5
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    .line 646
    const/4 v11, 0x0

    move v7, v4

    move-object v4, v2

    move v2, v3

    move v3, v7

    move-object v7, v13

    move v13, v6

    move-object v6, v7

    move-object v14, v8

    move/from16 v10, v25

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    move-object/from16 v8, p8

    .end local v4    # "callingUid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v25    # "userId":I
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .local v2, "callingPid":I
    .local v3, "callingUid":I
    .local v6, "allIntents":[Landroid/content/Intent;
    .restart local v7    # "allResolvedTypes":[Ljava/lang/String;
    .local v9, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v10, "userId":I
    .local v14, "finalIntent":Landroid/content/Intent;
    :try_start_2e
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_4
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    move v4, v3

    move-object v1, v6

    move-object/from16 v23, v7

    move v3, v2

    .end local v2    # "callingPid":I
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .end local v7    # "allResolvedTypes":[Ljava/lang/String;
    .end local v10    # "userId":I
    .local v1, "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .local v23, "allResolvedTypes":[Ljava/lang/String;
    .restart local v25    # "userId":I
    move-object/from16 p4, v1

    move v7, v3

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v8, v14

    move-object v1, v15

    move-object/from16 v21, v17

    move/from16 v33, v0

    .end local v33    # "res":I
    .local v0, "res":I
    goto/16 :goto_14

    .line 730
    .end local v0    # "res":I
    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .restart local v2    # "callingPid":I
    .local v3, "callingUid":I
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    .restart local v7    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v33    # "res":I
    :catchall_11
    move-exception v0

    move v4, v3

    move-object v1, v6

    move-object/from16 v23, v7

    move v3, v2

    move-object/from16 p4, v1

    move v11, v4

    move-object/from16 v22, v9

    move-object v1, v12

    move-object/from16 v21, v17

    move v12, v3

    .end local v2    # "callingPid":I
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .end local v7    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    goto/16 :goto_1b

    .line 668
    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v2    # "callingPid":I
    .local v3, "callingUid":I
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    .restart local v7    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v10    # "userId":I
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_4
    move-exception v0

    move v4, v3

    move-object v1, v6

    move-object/from16 v23, v7

    move/from16 v25, v10

    move v3, v2

    move-object/from16 p4, v1

    move v7, v3

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v8, v14

    move-object v1, v15

    move-object/from16 v21, v17

    .end local v2    # "callingPid":I
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .end local v7    # "allResolvedTypes":[Ljava/lang/String;
    .end local v10    # "userId":I
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v25    # "userId":I
    goto/16 :goto_15

    .line 730
    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v13    # "allIntents":[Landroid/content/Intent;
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-object v14, v8

    move-object v1, v13

    move-object/from16 v9, v29

    move-object/from16 v23, v30

    move-object/from16 p4, v1

    move v11, v4

    move-object/from16 v22, v9

    move-object v1, v12

    move-object/from16 v21, v17

    move v12, v3

    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .restart local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    goto/16 :goto_1b

    .line 668
    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v13    # "allIntents":[Landroid/content/Intent;
    .restart local v25    # "userId":I
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_5
    move-exception v0

    move-object v14, v8

    move-object v1, v13

    move-object/from16 v9, v29

    move-object/from16 v23, v30

    move-object/from16 p4, v1

    move v7, v3

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v1, v15

    move-object/from16 v21, v17

    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .restart local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    goto/16 :goto_15

    .line 645
    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v13    # "allIntents":[Landroid/content/Intent;
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    :cond_1d
    move-object v14, v8

    move-object v1, v13

    move-object/from16 v9, v29

    move-object/from16 v23, v30

    .line 656
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .restart local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v0

    .line 657
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 656
    invoke-virtual {v0, v14, v2, v9}, Lcom/android/server/wm/NtServicePopUpViewHelper;->saveActivityOptions(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/SafeActivityOptions;)V

    .line 659
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_9
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    move v7, v3

    .end local v3    # "callingPid":I
    .local v7, "callingPid":I
    :try_start_30
    iget v3, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_8
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    move-object/from16 v21, v17

    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    :try_start_31
    const-string v17, "PendingIntentRecord"

    .line 665
    invoke-virtual {v12, v15}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v5

    .line 666
    invoke-virtual {v5}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v20
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_7
    .catchall {:try_start_31 .. :try_end_31} :catchall_14

    .line 659
    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 p4, v1

    move v5, v4

    move v4, v7

    move-object/from16 v19, v12

    move-object v8, v14

    move-object v1, v15

    move/from16 v15, v25

    move/from16 v12, p10

    move-object v7, v0

    move-object v14, v9

    move-object/from16 v9, v21

    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v7    # "callingPid":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v25    # "userId":I
    .local v4, "callingPid":I
    .local v5, "callingUid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .local v9, "resolvedType":Ljava/lang/String;
    .local v14, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v15, "userId":I
    .local p4, "allIntents":[Landroid/content/Intent;
    :try_start_32
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_6
    .catchall {:try_start_32 .. :try_end_32} :catchall_13

    move v7, v4

    move-object v3, v14

    move-object/from16 v4, v19

    .end local v4    # "callingPid":I
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v14    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v15    # "userId":I
    .local v3, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v7    # "callingPid":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    move/from16 v33, v0

    .line 670
    :goto_14
    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    move-object v14, v8

    move/from16 v13, v33

    move-object/from16 v10, v35

    goto/16 :goto_19

    .line 730
    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v7    # "callingPid":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .restart local v4    # "callingPid":I
    .restart local v9    # "resolvedType":Ljava/lang/String;
    .restart local v14    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_13
    move-exception v0

    move v7, v4

    move-object/from16 v21, v9

    move-object v3, v14

    move-object/from16 v4, v19

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    move-object v14, v8

    .end local v4    # "callingPid":I
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v14    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v7    # "callingPid":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    goto/16 :goto_1b

    .line 668
    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v7    # "callingPid":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v4    # "callingPid":I
    .restart local v9    # "resolvedType":Ljava/lang/String;
    .restart local v14    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v15    # "userId":I
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_6
    move-exception v0

    move v7, v4

    move-object/from16 v21, v9

    move-object v3, v14

    move/from16 v25, v15

    move-object/from16 v4, v19

    .end local v4    # "callingPid":I
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v14    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v15    # "userId":I
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v7    # "callingPid":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    goto/16 :goto_15

    .line 730
    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "callingUid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .local v4, "callingUid":I
    .local v9, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v14, "finalIntent":Landroid/content/Intent;
    :catchall_14
    move-exception v0

    move-object/from16 p4, v1

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v8, v14

    move-object v1, v15

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    goto/16 :goto_1b

    .line 668
    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "callingUid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .restart local v4    # "callingUid":I
    .restart local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v25    # "userId":I
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_7
    move-exception v0

    move-object/from16 p4, v1

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v8, v14

    move-object v1, v15

    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    goto/16 :goto_15

    .line 730
    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "callingUid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .restart local v4    # "callingUid":I
    .restart local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    :catchall_15
    move-exception v0

    move-object/from16 p4, v1

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v8, v14

    move-object v1, v15

    move-object/from16 v21, v17

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    goto/16 :goto_1b

    .line 668
    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "callingUid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .restart local v4    # "callingUid":I
    .restart local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_8
    move-exception v0

    move-object/from16 p4, v1

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v8, v14

    move-object v1, v15

    move-object/from16 v21, v17

    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    goto/16 :goto_15

    .line 730
    .end local v5    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    :catchall_16
    move-exception v0

    move-object/from16 p4, v1

    move v7, v3

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v8, v14

    move-object v1, v15

    move-object/from16 v21, v17

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .local v3, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    goto/16 :goto_1b

    .line 668
    .end local v5    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .restart local v1    # "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_9
    move-exception v0

    move-object/from16 p4, v1

    move v7, v3

    move v5, v4

    move-object v3, v9

    move-object v4, v12

    move-object v8, v14

    move-object v1, v15

    move-object/from16 v21, v17

    .end local v1    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "callingUid":I
    .end local v9    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .local v3, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    goto :goto_15

    .line 730
    .end local v5    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v13    # "allIntents":[Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    :catchall_17
    move-exception v0

    move v7, v3

    move v5, v4

    move-object v4, v12

    move-object/from16 p4, v13

    move-object v1, v15

    move-object/from16 v21, v17

    move-object/from16 v3, v29

    move-object/from16 v23, v30

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    move-object v14, v8

    .end local v4    # "callingUid":I
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .local v3, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    goto/16 :goto_1b

    .line 668
    .end local v5    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v13    # "allIntents":[Landroid/content/Intent;
    .restart local v17    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_a
    move-exception v0

    move v7, v3

    move v5, v4

    move-object v4, v12

    move-object/from16 p4, v13

    move-object v1, v15

    move-object/from16 v21, v17

    move-object/from16 v3, v29

    move-object/from16 v23, v30

    .end local v4    # "callingUid":I
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v17    # "resolvedType":Ljava/lang/String;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .local v3, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    :goto_15
    nop

    .line 669
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_33
    const-string v2, "ActivityManager"

    const-string v6, "Unable to send startActivity intent"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_18

    .line 671
    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    move-object v14, v8

    move-object/from16 v10, v35

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_18

    .line 730
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v36    # "sendFinish":Z
    :catchall_18
    move-exception v0

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    move-object v14, v8

    goto/16 :goto_1b

    .line 680
    .end local v5    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v13    # "allIntents":[Landroid/content/Intent;
    .restart local v19    # "userId":I
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :pswitch_3
    move v7, v3

    move v5, v4

    move-object v8, v11

    move-object v4, v12

    move-object/from16 p4, v13

    move-object v1, v15

    move/from16 v25, v19

    move-object/from16 v3, v29

    move-object/from16 v23, v30

    const/4 v2, 0x1

    .end local v4    # "callingUid":I
    .end local v11    # "finalIntent":Landroid/content/Intent;
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v19    # "userId":I
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .local v3, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v25    # "userId":I
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    :try_start_34
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v0

    .line 681
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 680
    invoke-virtual {v0, v8, v6, v3}, Lcom/android/server/wm/NtServicePopUpViewHelper;->saveActivityOptions(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/SafeActivityOptions;)V

    .line 683
    iget-object v0, v4, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 684
    move-object/from16 v6, p13

    invoke-direct {v4, v0, v1, v6, v5}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;

    move-result-object v20

    .line 687
    .local v20, "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    invoke-direct {v4, v6}, Lcom/android/server/am/PendingIntentRecord;->createSafeActivityOptionsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 690
    .local v14, "extras":Landroid/os/Bundle;
    iget-object v0, v4, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v9, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v10, v10, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_d
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    move v6, v5

    .end local v5    # "callingUid":I
    .local v6, "callingUid":I
    :try_start_35
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_c
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    if-eqz p6, :cond_1e

    move/from16 v17, v2

    goto :goto_16

    :cond_1e
    const/16 v17, 0x0

    :goto_16
    const/16 v18, 0x0

    move-object v2, v3

    move-object v3, v9

    move-object/from16 v9, v21

    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .local v2, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v9, "resolvedType":Ljava/lang/String;
    const/16 v21, 0x0

    const/4 v13, 0x0

    move/from16 v12, p2

    move-object/from16 v11, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p13

    move-object/from16 v22, v2

    move-object v1, v4

    move-object v4, v10

    move/from16 v19, v25

    move-object/from16 v10, v35

    move-object v2, v0

    .end local v2    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v25    # "userId":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .local v10, "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v19    # "userId":I
    .local v22, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :try_start_36
    invoke-virtual/range {v2 .. v21}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I

    move-result v0
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_b
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    move v11, v6

    move v12, v7

    move-object/from16 v21, v9

    move-object v2, v14

    move-object v14, v8

    .line 696
    .end local v6    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v19    # "userId":I
    .local v0, "sent":I
    .local v2, "extras":Landroid/os/Bundle;
    .local v11, "callingUid":I
    .local v12, "callingPid":I
    .local v14, "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    if-nez v0, :cond_1f

    .line 697
    const/16 v36, 0x0

    .line 701
    .end local v0    # "sent":I
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v20    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    :cond_1f
    move/from16 v13, v33

    goto/16 :goto_19

    .line 730
    .end local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v25    # "userId":I
    .end local v36    # "sendFinish":Z
    .restart local v6    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    :catchall_19
    move-exception v0

    move v11, v6

    move v12, v7

    move-object v14, v8

    move-object/from16 v21, v9

    .end local v6    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    goto/16 :goto_1b

    .line 699
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    .restart local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v19    # "userId":I
    .restart local v36    # "sendFinish":Z
    :catch_b
    move-exception v0

    move v11, v6

    move v12, v7

    move-object v14, v8

    move-object/from16 v21, v9

    move/from16 v25, v19

    .end local v6    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v19    # "userId":I
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v25    # "userId":I
    goto :goto_17

    .line 730
    .end local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v25    # "userId":I
    .end local v36    # "sendFinish":Z
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v6    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    :catchall_1a
    move-exception v0

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v6

    move v12, v7

    move-object v14, v8

    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v6    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    goto/16 :goto_1b

    .line 699
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v6    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v25    # "userId":I
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_c
    move-exception v0

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v6

    move v12, v7

    move-object v14, v8

    move-object/from16 v10, v35

    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v6    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    goto :goto_17

    .line 730
    .end local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v25    # "userId":I
    .end local v36    # "sendFinish":Z
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    :catchall_1b
    move-exception v0

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    move-object v14, v8

    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    goto :goto_1b

    .line 699
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "callingUid":I
    .restart local v7    # "callingPid":I
    .restart local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v25    # "userId":I
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v36    # "sendFinish":Z
    :catch_d
    move-exception v0

    move-object/from16 v22, v3

    move-object v1, v4

    move v11, v5

    move v12, v7

    move-object v14, v8

    move-object/from16 v10, v35

    .end local v3    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v5    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "finalIntent":Landroid/content/Intent;
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_17
    nop

    .line 700
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_37
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startActivity intent"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1d

    .line 702
    nop

    .line 722
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local v25    # "userId":I
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .local v3, "callingPid":I
    .restart local v4    # "callingUid":I
    .local v11, "finalIntent":Landroid/content/Intent;
    .restart local v13    # "allIntents":[Landroid/content/Intent;
    .restart local v19    # "userId":I
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    :goto_18
    move/from16 v13, v33

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v19    # "userId":I
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .end local v33    # "res":I
    .end local v35    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .local v13, "res":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v25    # "userId":I
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    :goto_19
    if-eqz v36, :cond_20

    const/16 v2, -0x60

    if-eq v13, v2, :cond_20

    .line 724
    :try_start_38
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v9, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p6

    invoke-interface/range {v2 .. v9}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_e
    .catchall {:try_start_38 .. :try_end_38} :catchall_1c

    .line 727
    goto :goto_1a

    .line 730
    .end local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v25    # "userId":I
    .end local v36    # "sendFinish":Z
    :catchall_1c
    move-exception v0

    move/from16 v33, v13

    goto :goto_1b

    .line 726
    .restart local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .restart local v25    # "userId":I
    .restart local v36    # "sendFinish":Z
    :catch_e
    move-exception v0

    .line 730
    .end local v10    # "finishedReceiverThread":Landroid/app/IApplicationThread;
    .end local v25    # "userId":I
    .end local v36    # "sendFinish":Z
    :cond_20
    :goto_1a
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    nop

    .line 733
    return v13

    .line 730
    .end local v13    # "res":I
    .restart local v33    # "res":I
    :catchall_1d
    move-exception v0

    goto :goto_1b

    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .local v11, "finalIntent":Landroid/content/Intent;
    .local v13, "allIntents":[Landroid/content/Intent;
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    :catchall_1e
    move-exception v0

    move-object v14, v11

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    move v11, v4

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    :goto_1b
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    throw v0

    .line 579
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local v31    # "origId":J
    .end local v33    # "res":I
    .end local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .local v5, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v11, "finalIntent":Landroid/content/Intent;
    .restart local v13    # "allIntents":[Landroid/content/Intent;
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v30    # "allResolvedTypes":[Ljava/lang/String;
    :catchall_1f
    move-exception v0

    move-object/from16 v34, v5

    move-object v14, v11

    move-object v1, v12

    move-object/from16 p4, v13

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move v12, v3

    move v11, v4

    move-object/from16 v6, p4

    move-object v5, v14

    move-object/from16 v8, v22

    move-object/from16 v7, v23

    move-object/from16 v2, v34

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local v13    # "allIntents":[Landroid/content/Intent;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v30    # "allResolvedTypes":[Ljava/lang/String;
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v23    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local p4    # "allIntents":[Landroid/content/Intent;
    goto/16 :goto_1c

    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v23    # "allResolvedTypes":[Ljava/lang/String;
    .end local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local p4    # "allIntents":[Landroid/content/Intent;
    .local v2, "allIntents":[Landroid/content/Intent;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v7, "allResolvedTypes":[Ljava/lang/String;
    .local v11, "finalIntent":Landroid/content/Intent;
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_20
    move-exception v0

    move-object/from16 v34, v5

    move-object v14, v11

    move-object v1, v12

    move-object/from16 v22, v29

    move v12, v3

    move v11, v4

    move-object v6, v2

    move-object v5, v14

    move-object/from16 v8, v22

    move-object/from16 v2, v34

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v5    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto/16 :goto_1c

    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v34    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .local v11, "finalIntent":Landroid/content/Intent;
    .local v20, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_21
    move-exception v0

    move-object v14, v11

    move-object v1, v12

    move-object/from16 v22, v29

    move v12, v3

    move v11, v4

    move-object v6, v2

    move-object v5, v14

    move-object/from16 v2, v20

    move-object/from16 v8, v22

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    goto/16 :goto_1c

    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v22    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .local v8, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v11, "finalIntent":Landroid/content/Intent;
    :catchall_22
    move-exception v0

    move-object v14, v11

    move-object v1, v12

    move v12, v3

    move v11, v4

    move-object v6, v2

    move-object v5, v14

    move-object/from16 v2, v20

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    goto/16 :goto_1c

    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v2, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .local v6, "allIntents":[Landroid/content/Intent;
    .local v11, "finalIntent":Landroid/content/Intent;
    :catchall_23
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v6

    move-object v14, v11

    move-object v1, v12

    move v12, v3

    move v11, v4

    move-object v5, v14

    move-object/from16 v2, v20

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .local v2, "allIntents":[Landroid/content/Intent;
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto :goto_1c

    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local v21    # "resolvedType":Ljava/lang/String;
    .end local v27    # "flagsMask":I
    .end local v28    # "flagsValues":I
    .local v2, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    .local v11, "finalIntent":Landroid/content/Intent;
    .local p4, "resolvedType":Ljava/lang/String;
    .restart local p11    # "flagsMask":I
    .restart local p12    # "flagsValues":I
    :catchall_24
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v6

    move-object v14, v11

    move-object v1, v12

    move v12, v3

    move v11, v4

    move-object/from16 v21, p4

    move/from16 v28, p12

    move/from16 v27, v10

    move-object v5, v14

    move-object/from16 v2, v20

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .local v2, "allIntents":[Landroid/content/Intent;
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto :goto_1c

    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v2, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    .local v11, "finalIntent":Landroid/content/Intent;
    :catchall_25
    move-exception v0

    move/from16 v10, p11

    move-object/from16 v20, v2

    move-object v2, v6

    move-object v14, v11

    move-object v1, v12

    move v12, v3

    move v11, v4

    move-object/from16 v21, p4

    move/from16 v28, p12

    move/from16 v27, v10

    move-object v5, v14

    move-object/from16 v2, v20

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v6    # "allIntents":[Landroid/content/Intent;
    .local v2, "allIntents":[Landroid/content/Intent;
    .local v11, "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v14    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto :goto_1c

    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v14    # "finalIntent":Landroid/content/Intent;
    .end local v20    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v2, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .local v5, "finalIntent":Landroid/content/Intent;
    .restart local v6    # "allIntents":[Landroid/content/Intent;
    :catchall_26
    move-exception v0

    move/from16 v10, p11

    move-object/from16 v20, v2

    move v11, v4

    move-object v2, v6

    move-object v1, v12

    move v12, v3

    move-object/from16 v21, p4

    move/from16 v28, p12

    move/from16 v27, v10

    move-object/from16 v2, v20

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p11    # "flagsMask":I
    .end local p12    # "flagsValues":I
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingPid":I
    .restart local v21    # "resolvedType":Ljava/lang/String;
    .restart local v27    # "flagsMask":I
    .restart local v28    # "flagsValues":I
    :goto_1c
    :try_start_39
    monitor-exit v9
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_27

    throw v0

    :catchall_27
    move-exception v0

    goto :goto_1c

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendWithResult(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "allowlistToken"    # Landroid/os/IBinder;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "requiredPermission"    # Ljava/lang/String;
    .param p8, "options"    # Landroid/os/Bundle;

    .line 386
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v8

    return v8
.end method

.method setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 321
    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_3
    return-void
.end method

.method setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V
    .locals 8
    .param p1, "allowlistToken"    # Landroid/os/IBinder;
    .param p2, "duration"    # J
    .param p4, "type"    # I
    .param p5, "reasonCode"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .line 301
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p2    # "duration":J
    .end local p4    # "type":I
    .end local p5    # "reasonCode":I
    .end local p6    # "reason":Ljava/lang/String;
    .local v3, "duration":J
    .local v5, "type":I
    .local v6, "reasonCode":I
    .local v7, "reason":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;-><init>(JIILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    .end local v3    # "duration":J
    .end local v5    # "type":I
    .end local v6    # "reasonCode":I
    .end local v7    # "reason":Ljava/lang/String;
    .restart local p2    # "duration":J
    .restart local p4    # "type":I
    .restart local p5    # "reasonCode":I
    .restart local p6    # "reason":Ljava/lang/String;
    :cond_1
    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p2    # "duration":J
    .end local p4    # "type":I
    .end local p5    # "reasonCode":I
    .end local p6    # "reason":Ljava/lang/String;
    .restart local v3    # "duration":J
    .restart local v5    # "type":I
    .restart local v6    # "reasonCode":I
    .restart local v7    # "reason":Ljava/lang/String;
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz p2, :cond_2

    .line 308
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-gtz p2, :cond_2

    .line 310
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 313
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 873
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0

    .line 876
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 877
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 882
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 883
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 886
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    .line 888
    const-string v1, " (allowlist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 890
    if-eqz v1, :cond_2

    .line 891
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 894
    .local v2, "entry":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 895
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 894
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 898
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .end local v2    # "entry":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 905
    .end local v1    # "i":I
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 355
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 356
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 359
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 362
    :cond_1
    return-void
.end method
