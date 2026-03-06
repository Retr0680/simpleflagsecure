.class public Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
.super Ljava/lang/Object;
.source "ClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mId:I

.field private mProcessId:I

.field private mResourceOwnershipRetention:Z

.field private mTvInputSessionId:Ljava/lang/String;

.field private mUseCase:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResourceOwnershipRetention(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mResourceOwnershipRetention:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTvInputSessionId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseCase(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    return p0
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mResourceOwnershipRetention:Z

    .line 395
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mId:I

    .line 396
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .locals 2

    .line 446
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;Lcom/android/server/tv/tunerresourcemanager/ClientProfile-IA;)V

    .line 447
    .local v0, "clientProfile":Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    return-object v0
.end method

.method public processId(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0
    .param p1, "processId"    # I

    .line 424
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    .line 425
    return-object p0
.end method

.method public resourceOwnershipRetention(Z)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 436
    iput-boolean p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mResourceOwnershipRetention:Z

    .line 437
    return-object p0
.end method

.method public tvInputSessionId(Ljava/lang/String;)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0
    .param p1, "tvInputSessionId"    # Ljava/lang/String;

    .line 414
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    .line 415
    return-object p0
.end method

.method public useCase(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    .locals 0
    .param p1, "useCase"    # I

    .line 404
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    .line 405
    return-object p0
.end method
