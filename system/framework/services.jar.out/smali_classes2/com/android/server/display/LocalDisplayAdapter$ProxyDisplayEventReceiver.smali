.class public final Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyDisplayEventReceiver"
.end annotation


# instance fields
.field private final mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    .line 1625
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 1628
    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    .line 1629
    return-void
.end method


# virtual methods
.method public onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 6
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "overrides"    # [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 1650
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "timestampNanos":J
    .end local p3    # "physicalDisplayId":J
    .end local p5    # "overrides":[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .local v1, "timestampNanos":J
    .local v3, "physicalDisplayId":J
    .local v5, "overrides":[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    .line 1651
    return-void
.end method

.method public onHdcpLevelsChanged(JII)V
    .locals 1
    .param p1, "physicalDisplayId"    # J
    .param p3, "connectedLevel"    # I
    .param p4, "maxLevel"    # I

    .line 1655
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHdcpLevelsChanged(JII)V

    .line 1656
    return-void
.end method

.method public onHotplug(JJZ)V
    .locals 6
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "connected"    # Z

    .line 1633
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "timestampNanos":J
    .end local p3    # "physicalDisplayId":J
    .end local p5    # "connected":Z
    .local v1, "timestampNanos":J
    .local v3, "physicalDisplayId":J
    .local v5, "connected":Z
    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHotplug(JJZ)V

    .line 1634
    return-void
.end method

.method public onHotplugConnectionError(JI)V
    .locals 1
    .param p1, "timestampNanos"    # J
    .param p3, "errorCode"    # I

    .line 1638
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHotplugConnectionError(JI)V

    .line 1639
    return-void
.end method

.method public onModeChanged(JJIJ)V
    .locals 8
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "modeId"    # I
    .param p6, "renderPeriod"    # J

    .line 1644
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide v6, p6

    .end local p1    # "timestampNanos":J
    .end local p3    # "physicalDisplayId":J
    .end local p5    # "modeId":I
    .end local p6    # "renderPeriod":J
    .local v1, "timestampNanos":J
    .local v3, "physicalDisplayId":J
    .local v5, "modeId":I
    .local v6, "renderPeriod":J
    invoke-interface/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onModeChanged(JJIJ)V

    .line 1645
    return-void
.end method
