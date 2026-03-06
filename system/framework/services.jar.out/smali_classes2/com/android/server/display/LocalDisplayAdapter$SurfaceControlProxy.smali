.class public Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceControlProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBootDisplayMode(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1798
    invoke-static {p1}, Landroid/view/SurfaceControl;->clearBootDisplayMode(Landroid/os/IBinder;)V

    .line 1799
    return-void
.end method

.method public getBootDisplayModeSupport()Z
    .locals 3

    .line 1785
    const-string v0, "getBootDisplayModeSupport"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1787
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->getBootDisplayModeSupport()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1787
    return v0

    .line 1789
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1790
    throw v0
.end method

.method public getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1768
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1811
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .locals 1
    .param p1, "displayId"    # J

    .line 1751
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDisplayIds()[J
    .locals 1

    .line 1755
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .locals 1
    .param p1, "physicalDisplayId"    # J

    .line 1759
    invoke-static {p1, p2}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .locals 1
    .param p1, "displayId"    # J

    .line 1763
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public setActiveColorMode(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "colorMode"    # I

    .line 1781
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "on"    # Z

    .line 1802
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 1804
    return-void
.end method

.method public setBootDisplayMode(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "modeId"    # I

    .line 1794
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setBootDisplayMode(Landroid/os/IBinder;I)V

    .line 1795
    return-void
.end method

.method public setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "specs"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 1773
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    return v0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;F)Z
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "brightness"    # F

    .line 1815
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    move-result v0

    return v0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "sdrBacklight"    # F
    .param p3, "sdrNits"    # F
    .param p4, "displayBacklight"    # F
    .param p5, "displayNits"    # F

    .line 1820
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0
.end method

.method public setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 1777
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1778
    return-void
.end method

.method public setGameContentType(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "on"    # Z

    .line 1807
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setGameContentType(Landroid/os/IBinder;Z)V

    .line 1808
    return-void
.end method
