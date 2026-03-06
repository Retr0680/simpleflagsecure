.class Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;
.super Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->takeScreenshotOfWindow(IILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

.field final synthetic val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field final synthetic val$interactionId:I

.field final synthetic val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/window/ScreenCapture$ScreenCaptureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1458
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iput p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    iput-object p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;

    invoke-direct {p0}, Landroid/view/accessibility/IWindowSurfaceInfoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V
    .locals 5
    .param p1, "windowFlags"    # I
    .param p2, "processUid"    # I
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 1462
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mcanCaptureSecureLayers(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    .line 1463
    .local v0, "canCaptureSecureLayers":Z
    if-nez v0, :cond_0

    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_0

    .line 1466
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    const/4 v3, 0x6

    invoke-interface {v1, v3, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    goto :goto_0

    .line 1469
    :catch_0
    move-exception v1

    .line 1472
    :goto_0
    return-void

    .line 1475
    :cond_0
    new-instance v1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v1, p3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 1477
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object v1

    int-to-long v2, p2

    .line 1478
    invoke-virtual {v1, v2, v3}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 1479
    invoke-virtual {v1, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 1480
    invoke-virtual {v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v1

    .line 1481
    .local v1, "captureArgs":Landroid/window/ScreenCapture$LayerCaptureArgs;
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$listener:Landroid/window/ScreenCapture$ScreenCaptureListener;

    invoke-interface {v2, v1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->performScreenCapture(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1483
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$2;->val$interactionId:I

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1488
    goto :goto_1

    .line 1486
    :catch_1
    move-exception v2

    .line 1490
    :cond_1
    :goto_1
    return-void
.end method
