.class public interface abstract Lcom/android/server/tracker/INtPowerBehavior;
.super Ljava/lang/Object;
.source "INtPowerBehavior.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/tracker/INtPowerBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/android/server/tracker/INtPowerBehavior$1;

    invoke-direct {v0}, Lcom/android/server/tracker/INtPowerBehavior$1;-><init>()V

    sput-object v0, Lcom/android/server/tracker/INtPowerBehavior;->DEFAULT:Lcom/android/server/tracker/INtPowerBehavior;

    return-void
.end method


# virtual methods
.method public addUserDataPoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "record"    # Ljava/lang/String;

    .line 19
    return-void
.end method

.method public noteScreenBrightness(F)V
    .locals 0
    .param p1, "brightness"    # F

    .line 22
    return-void
.end method

.method public notifyHBMState(Z)V
    .locals 0
    .param p1, "isHBM"    # Z

    .line 20
    return-void
.end method

.method public notifyScreenState(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 21
    return-void
.end method

.method public submitWindowScreenBrightness()V
    .locals 0

    .line 24
    return-void
.end method

.method public updateWindowScreenBrightness(F)V
    .locals 0
    .param p1, "windowScreenBrightness"    # F

    .line 23
    return-void
.end method
