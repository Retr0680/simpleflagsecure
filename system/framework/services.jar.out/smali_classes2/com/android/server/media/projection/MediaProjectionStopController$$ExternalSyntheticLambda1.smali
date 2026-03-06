.class public final synthetic Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionStopController;->$r8$lambda$mvM8pK9Lkoi3AQwy6r7PezXYveY(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
