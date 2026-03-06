.class public final synthetic Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$12;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$12;Landroid/os/UserHandle;IILcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/NotificationManagerService$12;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/NotificationManagerService$12;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$12;->$r8$lambda$AiVXW_Mz68xRVFQJEQCJ4W9_HZQ(Lcom/android/server/notification/NotificationManagerService$12;Landroid/os/UserHandle;IILcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method
