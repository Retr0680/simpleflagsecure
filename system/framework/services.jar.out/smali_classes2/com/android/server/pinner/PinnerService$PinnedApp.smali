.class final Lcom/android/server/pinner/PinnerService$PinnedApp;
.super Ljava/lang/Object;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pinner/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PinnedApp"
.end annotation


# instance fields
.field active:Z

.field final mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pinner/PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field final uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/pinner/PinnerService;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    .line 1494
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    .line 1495
    invoke-static {p1}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmAmInternal(Lcom/android/server/pinner/PinnerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p1

    iget v0, p0, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    invoke-virtual {p1, v0}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    .line 1496
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pinner/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pinner/PinnerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pinner/PinnerService$PinnedApp;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method
