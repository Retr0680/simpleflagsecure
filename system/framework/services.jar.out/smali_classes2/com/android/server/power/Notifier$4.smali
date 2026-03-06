.class Lcom/android/server/power/Notifier$4;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1208
    sget-object v0, Lcom/nothing/INtExtFactory$ExtType;->NT_AAC_VIBRATOR:Lcom/nothing/INtExtFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/NtExtFactory;->create(Lcom/nothing/INtExtFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/ext/INtAacVibrator;

    const-string v1, "/vendor/etc/richtapresources/NT_charge.he"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nothing/ext/INtAacVibrator;->playPattern(Ljava/lang/String;I)V

    .line 1210
    return-void
.end method
