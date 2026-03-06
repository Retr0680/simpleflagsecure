.class public Lcom/android/server/display/AutomaticBrightnessController$Injector;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createClock()Lcom/android/server/display/AutomaticBrightnessController$Clock;
    .locals 2

    .line 1812
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$RealClock;-><init>(Lcom/android/server/display/AutomaticBrightnessController-IA;)V

    return-object v0
.end method

.method public getBackgroundThreadHandler()Landroid/os/Handler;
    .locals 1

    .line 1808
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
