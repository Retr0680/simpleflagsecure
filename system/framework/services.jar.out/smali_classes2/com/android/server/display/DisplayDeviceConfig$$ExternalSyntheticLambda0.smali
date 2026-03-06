.class public final synthetic Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayDeviceConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    check-cast p1, Lcom/android/server/display/config/HighBrightnessMode;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->$r8$lambda$kvaggoREB46PbgPpqpZy8K1UmjQ(Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
