.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/companion/virtual/GenericWindowPolicyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iput p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iput-boolean p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->$r8$lambda$Z53MQXY6IsRZRvjFonPCLjY24-0(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    return-void
.end method
