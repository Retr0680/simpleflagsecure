.class public Lcom/android/server/companion/association/AssociationRequestsProcessor;
.super Ljava/lang/Object;
.source "AssociationRequestsProcessor.java"


# static fields
.field private static final ASSOCIATE_WITHOUT_PROMPT_MAX_PER_TIME_WINDOW:I = 0x5

.field private static final ASSOCIATE_WITHOUT_PROMPT_WINDOW_MS:J = 0x36ee80L

.field private static final DEVICE_PROFILES_WITH_REQUIRED_CONFIRMATION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_APPLICATION_CALLBACK:Ljava/lang/String; = "application_callback"

.field private static final EXTRA_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final EXTRA_ASSOCIATION_REQUEST:Ljava/lang/String; = "association_request"

.field private static final EXTRA_FORCE_CANCEL_CONFIRMATION:Ljava/lang/String; = "cancel_confirmation"

.field private static final EXTRA_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final RESULT_CODE_ASSOCIATION_APPROVED:I = 0x0

.field private static final RESULT_CODE_ASSOCIATION_CREATED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CDM_AssociationRequestsProcessor"


# instance fields
.field private final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field private final mCompanionAssociationActivity:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$5cHcmgOU5-M7Ixh1vBBnUKnb5XQ(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->lambda$willAddRoleHolder$2(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CgqfujjRwuEbyDGRHVoyUJ7mJww(Lcom/android/server/companion/association/AssociationRequestsProcessor;Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->lambda$maybeGrantRoleAndStoreAssociation$1(Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cG0UJrFrYGi05qxlHW0uB_bcn7s(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->lambda$createPendingIntent$3(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eimnE-Eo3AocyFnmHvXx98pMczo(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->lambda$createAssociationAndNotifyApplication$0(ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAssociationRequestApproval(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->processAssociationRequestApproval(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string v2, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->DEVICE_PROFILES_WITH_REQUIRED_CONFIRMATION:Ljava/util/Set;

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p3, "associationStore"    # Lcom/android/server/companion/association/AssociationStore;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

    .line 468
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

    .line 151
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 153
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 155
    const v1, 0x104021b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v1, ".CompanionAssociationActivity"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    .line 157
    return-void
.end method

.method private createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "macAddress"    # Landroid/net/MacAddress;
    .param p5, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 293
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move v2, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "request":Landroid/companion/AssociationRequest;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "macAddress":Landroid/net/MacAddress;
    .end local p5    # "callback":Landroid/companion/IAssociationRequestCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v2, "userId":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "macAddress":Landroid/net/MacAddress;
    .local v5, "request":Landroid/companion/AssociationRequest;
    .local v6, "callback":Landroid/companion/IAssociationRequestCallback;
    .local v7, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 299
    return-void
.end method

.method private createPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "packageUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 455
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILandroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method private synthetic lambda$createAssociationAndNotifyApplication$0(ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "macAddress"    # Landroid/net/MacAddress;
    .param p4, "request"    # Landroid/companion/AssociationRequest;
    .param p5, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 295
    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->getAssociatedDevice()Landroid/companion/AssociatedDevice;

    move-result-object v6

    .line 296
    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 294
    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    .line 298
    return-void
.end method

.method private synthetic lambda$createPendingIntent$3(ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "packageUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 459
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 460
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 456
    const/high16 v3, 0x54000000

    move v1, p1

    move-object v2, p2

    .end local p1    # "packageUid":I
    .end local p2    # "intent":Landroid/content/Intent;
    .local v1, "packageUid":I
    .local v2, "intent":Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$maybeGrantRoleAndStoreAssociation$1(Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "deviceProfile"    # Ljava/lang/String;
    .param p2, "association"    # Landroid/companion/AssociationInfo;
    .param p3, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "success"    # Ljava/lang/Boolean;

    .line 349
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "CDM_AssociationRequestsProcessor"

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " role to userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p2}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 354
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to the list of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " holders."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 361
    :goto_0
    return-void
.end method

.method private synthetic lambda$willAddRoleHolder$2(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/companion/utils/RolesUtils;->isRoleHolder(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private mayAssociateWithoutPrompt(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 504
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 505
    invoke-virtual {v2, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 507
    .local v2, "associationForPackage":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    const/4 v3, 0x0

    .line 508
    .local v3, "recent":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/AssociationInfo;

    .line 509
    .local v5, "association":Landroid/companion/AssociationInfo;
    nop

    .line 510
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v7

    .line 511
    .local v6, "isRecent":Z
    :goto_1
    if-eqz v6, :cond_1

    .line 512
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x5

    if-lt v3, v10, :cond_1

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many associations: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " already associated "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " devices within the last "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "CDM_AssociationRequestsProcessor"

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return v7

    .line 519
    .end local v5    # "association":Landroid/companion/AssociationInfo;
    .end local v6    # "isRecent":Z
    :cond_1
    goto :goto_0

    .line 521
    :cond_2
    iget-object v4, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4, v5, p1}, Lcom/android/server/companion/utils/PackageUtils;->isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method private processAssociationRequestApproval(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V
    .locals 9
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "macAddress"    # Landroid/net/MacAddress;

    .line 262
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getUserId()I

    move-result v4

    .line 264
    .local v4, "userId":I
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    .line 269
    .local v8, "packageUid":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v8}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    nop

    .line 285
    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v5, p4

    .end local p1    # "request":Landroid/companion/AssociationRequest;
    .end local p2    # "callback":Landroid/companion/IAssociationRequestCallback;
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p4    # "macAddress":Landroid/net/MacAddress;
    .local v2, "request":Landroid/companion/AssociationRequest;
    .local v5, "macAddress":Landroid/net/MacAddress;
    .local v6, "callback":Landroid/companion/IAssociationRequestCallback;
    .local v7, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 287
    return-void

    .line 270
    .end local v2    # "request":Landroid/companion/AssociationRequest;
    .end local v5    # "macAddress":Landroid/net/MacAddress;
    .end local v6    # "callback":Landroid/companion/IAssociationRequestCallback;
    .end local v7    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p1    # "request":Landroid/companion/AssociationRequest;
    .restart local p2    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p4    # "macAddress":Landroid/net/MacAddress;
    :catch_0
    move-exception v0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v5, p4

    move-object p1, v0

    .line 274
    .end local p2    # "callback":Landroid/companion/IAssociationRequestCallback;
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p4    # "macAddress":Landroid/net/MacAddress;
    .restart local v2    # "request":Landroid/companion/AssociationRequest;
    .restart local v5    # "macAddress":Landroid/net/MacAddress;
    .restart local v6    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local v7    # "resultReceiver":Landroid/os/ResultReceiver;
    .local p1, "e":Ljava/lang/SecurityException;
    nop

    .line 275
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    invoke-interface {v6, p3, p2}, Landroid/companion/IAssociationRequestCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 281
    :goto_0
    return-void
.end method

.method private sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "association"    # Landroid/companion/AssociationInfo;
    .param p2, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 401
    if-eqz p1, :cond_1

    .line 403
    if-eqz p2, :cond_0

    .line 405
    :try_start_0
    invoke-interface {p2, p1}, Landroid/companion/IAssociationRequestCallback;->onAssociationCreated(Landroid/companion/AssociationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 412
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "association"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 415
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 416
    .end local v0    # "data":Landroid/os/Bundle;
    goto :goto_2

    .line 419
    :cond_1
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 421
    :try_start_1
    const-string v1, "Association doesn\'t exist."

    invoke-interface {p2, v0, v1}, Landroid/companion/IAssociationRequestCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    goto :goto_1

    .line 422
    :catch_1
    move-exception v1

    .line 428
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 429
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v1, "data":Landroid/os/Bundle;
    invoke-virtual {p3, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 433
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_3
    :goto_2
    return-void
.end method

.method private willAddRoleHolder(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 437
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "deviceProfile":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/companion/utils/RolesUtils;->isRolelessProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 440
    :cond_1
    new-instance v1, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 444
    .local v1, "isRoleHolder":Z
    xor-int/lit8 v2, v1, 0x1

    return v2

    .line 438
    .end local v1    # "isRoleHolder":Z
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 249
    .local v0, "packageUid":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "cancel_confirmation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 254
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    invoke-direct {p0, v0, v2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
.end method

.method public createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V
    .locals 23
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "macAddress"    # Landroid/net/MacAddress;
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "deviceProfile"    # Ljava/lang/String;
    .param p6, "associatedDevice"    # Landroid/companion/AssociatedDevice;
    .param p7, "selfManaged"    # Z
    .param p8, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p9, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p10, "deviceIcon"    # Landroid/graphics/drawable/Icon;
    .param p11, "skipRoleGrant"    # Z

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    iget-object v3, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v3}, Lcom/android/server/companion/association/AssociationStore;->getNextId()I

    move-result v5

    .line 311
    .local v5, "id":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 313
    .local v16, "timestamp":J
    new-instance v4, Landroid/companion/AssociationInfo;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide v18, 0x7fffffffffffffffL

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v21, p10

    invoke-direct/range {v4 .. v22}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    .line 319
    .local v4, "association":Landroid/companion/AssociationInfo;
    if-eqz p11, :cond_0

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created association for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and userId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", packageName="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " without granting role"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    const-string v6, "CDM_AssociationRequestsProcessor"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v3, v4}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 324
    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 329
    :goto_0
    return-void
.end method

.method public disableSystemDataSync(II)V
    .locals 4
    .param p1, "associationId"    # I
    .param p2, "flags"    # I

    .line 379
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 381
    .local v0, "association":Landroid/companion/AssociationInfo;
    new-instance v1, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v1, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 382
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result v2

    not-int v3, p2

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v1

    .line 383
    .local v1, "updated":Landroid/companion/AssociationInfo;
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 384
    return-void
.end method

.method public enableSystemDataSync(II)V
    .locals 3
    .param p1, "associationId"    # I
    .param p2, "flags"    # I

    .line 368
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 370
    .local v0, "association":Landroid/companion/AssociationInfo;
    new-instance v1, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v1, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 371
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result v2

    or-int/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v1

    .line 372
    .local v1, "updated":Landroid/companion/AssociationInfo;
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 373
    return-void
.end method

.method public maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "association"    # Landroid/companion/AssociationInfo;
    .param p2, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 337
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "deviceProfile":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/server/companion/utils/RolesUtils;->isRolelessProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_0

    .line 348
    :cond_0
    iget-object v6, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "association":Landroid/companion/AssociationInfo;
    .end local p2    # "callback":Landroid/companion/IAssociationRequestCallback;
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v3, "association":Landroid/companion/AssociationInfo;
    .local v4, "callback":Landroid/companion/IAssociationRequestCallback;
    .local v5, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    invoke-static {v6, v3, v0}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    .line 362
    return-void

    .line 340
    .end local v3    # "association":Landroid/companion/AssociationInfo;
    .end local v4    # "callback":Landroid/companion/IAssociationRequestCallback;
    .end local v5    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local p1    # "association":Landroid/companion/AssociationInfo;
    .restart local p2    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_1
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 341
    .end local p1    # "association":Landroid/companion/AssociationInfo;
    .end local p2    # "callback":Landroid/companion/IAssociationRequestCallback;
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .restart local v3    # "association":Landroid/companion/AssociationInfo;
    .restart local v4    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local v5    # "resultReceiver":Landroid/os/ResultReceiver;
    :goto_0
    iget-object p1, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, v3}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 342
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 343
    return-void
.end method

.method public processNewAssociationRequest(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/companion/IAssociationRequestCallback;)V
    .locals 10
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/companion/IAssociationRequestCallback;

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 176
    .local v1, "packageUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNewAssociationRequest() request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", package=u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDM_AssociationRequestsProcessor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V

    .line 181
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isForceConfirmation()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->DEVICE_PROFILES_WITH_REQUIRED_CONFIRMATION:Ljava/util/Set;

    .line 186
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->willAddRoleHolder(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "request":Landroid/companion/AssociationRequest;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "callback":Landroid/companion/IAssociationRequestCallback;
    .local v4, "request":Landroid/companion/AssociationRequest;
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "userId":I
    .local v8, "callback":Landroid/companion/IAssociationRequestCallback;
    invoke-direct/range {v3 .. v9}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 191
    return-void

    .line 187
    .end local v4    # "request":Landroid/companion/AssociationRequest;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v8    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local p1    # "request":Landroid/companion/AssociationRequest;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "callback":Landroid/companion/IAssociationRequestCallback;
    :cond_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "request":Landroid/companion/AssociationRequest;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local v4    # "request":Landroid/companion/AssociationRequest;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v8    # "callback":Landroid/companion/IAssociationRequestCallback;
    goto :goto_0

    .line 186
    .end local v4    # "request":Landroid/companion/AssociationRequest;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v8    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local p1    # "request":Landroid/companion/AssociationRequest;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "callback":Landroid/companion/IAssociationRequestCallback;
    :cond_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "request":Landroid/companion/AssociationRequest;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local v4    # "request":Landroid/companion/AssociationRequest;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v8    # "callback":Landroid/companion/IAssociationRequestCallback;
    goto :goto_0

    .line 185
    .end local v4    # "request":Landroid/companion/AssociationRequest;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v8    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local p1    # "request":Landroid/companion/AssociationRequest;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "callback":Landroid/companion/IAssociationRequestCallback;
    :cond_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .line 196
    .end local p1    # "request":Landroid/companion/AssociationRequest;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "callback":Landroid/companion/IAssociationRequestCallback;
    .restart local v4    # "request":Landroid/companion/AssociationRequest;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v8    # "callback":Landroid/companion/IAssociationRequestCallback;
    :goto_0
    iget-object p1, v3, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.type.watch"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 197
    const-string p1, "3p apps are not allowed to create associations on watch."

    .line 198
    .local p1, "errorMessage":Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    nop

    .line 201
    const/4 p2, 0x4

    :try_start_0
    invoke-interface {v8, p2, p1}, Landroid/companion/IAssociationRequestCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 208
    :goto_1
    return-void

    .line 214
    .end local p1    # "errorMessage":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4, v5}, Landroid/companion/AssociationRequest;->setPackageName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v4, v6}, Landroid/companion/AssociationRequest;->setUserId(I)V

    .line 216
    invoke-direct {p0, v5, v6}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mayAssociateWithoutPrompt(Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {v4, p1}, Landroid/companion/AssociationRequest;->setSkipPrompt(Z)V

    .line 219
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local p1, "extras":Landroid/os/Bundle;
    const-string p2, "association_request"

    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    const-string p2, "application_callback"

    invoke-interface {v8}, Landroid/companion/IAssociationRequestCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    iget-object p2, v3, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

    invoke-static {p2}, Lcom/android/server/companion/utils/Utils;->prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p2

    const-string/jumbo p3, "result_receiver"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 225
    .local p2, "intent":Landroid/content/Intent;
    iget-object p3, v3, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 229
    invoke-direct {p0, v1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p3

    .line 233
    .local p3, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_1
    invoke-interface {v8, p3}, Landroid/companion/IAssociationRequestCallback;->onAssociationPending(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    goto :goto_2

    .line 234
    :catch_1
    move-exception v0

    .line 236
    :goto_2
    return-void
.end method

.method public setDeviceId(ILandroid/companion/DeviceId;)V
    .locals 2
    .param p1, "associationId"    # I
    .param p2, "deviceId"    # Landroid/companion/DeviceId;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting DeviceId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] to id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_AssociationRequestsProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 394
    .local v0, "association":Landroid/companion/AssociationInfo;
    new-instance v1, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v1, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {v1, p2}, Landroid/companion/AssociationInfo$Builder;->setDeviceId(Landroid/companion/DeviceId;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 396
    return-void
.end method
