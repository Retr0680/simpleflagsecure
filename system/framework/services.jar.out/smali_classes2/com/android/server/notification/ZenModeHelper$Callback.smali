.class public Lcom/android/server/notification/ZenModeHelper$Callback;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 3016
    return-void
.end method

.method onConfigChanged()V
    .locals 0

    .line 3012
    return-void
.end method

.method onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 0
    .param p1, "newConsolidatedPolicy"    # Landroid/app/NotificationManager$Policy;

    .line 3015
    return-void
.end method

.method onPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 0
    .param p1, "newPolicy"    # Landroid/app/NotificationManager$Policy;

    .line 3014
    return-void
.end method

.method onZenModeChanged()V
    .locals 0

    .line 3013
    return-void
.end method
