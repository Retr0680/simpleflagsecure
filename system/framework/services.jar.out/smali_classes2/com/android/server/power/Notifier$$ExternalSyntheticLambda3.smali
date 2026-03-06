.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$10:I

.field public final synthetic f$11:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/WorkSource;

.field public final synthetic f$7:I

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    iput-object p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$5:I

    iput-object p7, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$6:Landroid/os/WorkSource;

    iput p8, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$7:I

    iput-object p9, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$8:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$9:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$10:I

    iput-boolean p12, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$11:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 0
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    iget-object v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    iget v2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$5:I

    iget-object v6, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$6:Landroid/os/WorkSource;

    iget v7, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$7:I

    iget-object v8, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$8:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$9:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$10:I

    iget-boolean v11, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$11:Z

    invoke-static/range {v0 .. v11}, Lcom/android/server/power/Notifier;->$r8$lambda$NfLwjQ1rEoAdiv20_xGg1-SMd6o(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
