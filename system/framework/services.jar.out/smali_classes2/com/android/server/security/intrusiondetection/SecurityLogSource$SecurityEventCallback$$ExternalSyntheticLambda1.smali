.class public final synthetic Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->$r8$lambda$Ot37V1FkWPG4P8eATwgdx5z2QoU(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object p1

    return-object p1
.end method
