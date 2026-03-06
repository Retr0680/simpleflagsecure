.class Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WindowContainerInfo"
.end annotation


# instance fields
.field private final mToken:Landroid/window/WindowContainerToken;

.field private final mUid:I


# direct methods
.method private constructor <init>(ILandroid/window/WindowContainerToken;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "token"    # Landroid/window/WindowContainerToken;

    .line 9442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9443
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mUid:I

    .line 9444
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mToken:Landroid/window/WindowContainerToken;

    .line 9445
    return-void
.end method

.method synthetic constructor <init>(ILandroid/window/WindowContainerToken;Lcom/android/server/wm/WindowManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;-><init>(ILandroid/window/WindowContainerToken;)V

    return-void
.end method


# virtual methods
.method public getToken()Landroid/window/WindowContainerToken;
    .locals 1

    .line 9453
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mToken:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 9448
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mUid:I

    return v0
.end method
