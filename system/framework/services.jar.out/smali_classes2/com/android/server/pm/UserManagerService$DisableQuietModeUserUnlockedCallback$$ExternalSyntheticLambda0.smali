.class public final synthetic Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    iget v1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->$r8$lambda$yIx59XomjMRvGgUe03ghy41dQT4(Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;IJ)V

    return-void
.end method
