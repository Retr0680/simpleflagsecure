.class final Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerUserPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 237
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 239
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mupdateDreamOnPackageRemoved(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;I)V

    .line 240
    return-void
.end method
