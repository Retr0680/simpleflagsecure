.class Lcom/android/server/display/DisplayPowerProximityStateController$Injector;
.super Ljava/lang/Object;
.source "DisplayPowerProximityStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerProximityStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createClock()Lcom/android/server/display/DisplayPowerProximityStateController$Clock;
    .locals 1

    .line 630
    new-instance v0, Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
