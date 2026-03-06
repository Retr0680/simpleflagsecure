.class public final synthetic Lcom/android/server/GestureLauncherService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/GestureLauncherService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/GestureLauncherService;

    return-void
.end method


# virtual methods
.method public final onGesturePendingIntentRetrieved(Landroid/app/PendingIntent;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p1}, Lcom/android/server/GestureLauncherService;->$r8$lambda$J_u470zAEaWwT8K6VSDfXYnX5ns(Lcom/android/server/GestureLauncherService;Landroid/app/PendingIntent;)V

    return-void
.end method
