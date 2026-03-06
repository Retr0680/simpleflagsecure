.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/app/NotificationChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$3:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$3:Landroid/app/NotificationChannel;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->$r8$lambda$SEiDsxpGNQZwvB8jzhcrw5y8Ypc(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Landroid/app/NotificationChannel;)V

    return-void
.end method
