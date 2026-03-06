.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->f$0:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-static {v0, p1}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$H_OtNgiiXWUlQZA6FKtIStkV4xE(Landroid/os/IBinder;Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;)Z

    move-result p1

    return p1
.end method
