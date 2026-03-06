.class final Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;
.super Ljava/lang/Object;
.source "NtDevicePolicyEngine.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NtDevicePolicyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StabilityDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/NtDevicePolicyEngine;


# direct methods
.method private constructor <init>(Lcom/android/server/devicepolicy/NtDevicePolicyEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;->this$0:Lcom/android/server/devicepolicy/NtDevicePolicyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/NtDevicePolicyEngine;Lcom/android/server/devicepolicy/NtDevicePolicyEngine-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;-><init>(Lcom/android/server/devicepolicy/NtDevicePolicyEngine;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 133
    const-string v0, "NtDevicePolicyEngine"

    const-string v1, "Stability hal service is down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;->this$0:Lcom/android/server/devicepolicy/NtDevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->-$$Nest$mresetHalInterface(Lcom/android/server/devicepolicy/NtDevicePolicyEngine;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;->this$0:Lcom/android/server/devicepolicy/NtDevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->-$$Nest$minitStabilityAIDL(Lcom/android/server/devicepolicy/NtDevicePolicyEngine;)V

    .line 136
    return-void
.end method
