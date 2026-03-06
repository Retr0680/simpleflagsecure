.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;

.field public final synthetic f$1:Landroid/service/notification/INotificationListener;

.field public final synthetic f$2:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;->f$1:Landroid/service/notification/INotificationListener;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;->f$2:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;->f$1:Landroid/service/notification/INotificationListener;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;->f$2:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->$r8$lambda$Ew6032arg6YYkbIZxTH_wu2-PH4(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
