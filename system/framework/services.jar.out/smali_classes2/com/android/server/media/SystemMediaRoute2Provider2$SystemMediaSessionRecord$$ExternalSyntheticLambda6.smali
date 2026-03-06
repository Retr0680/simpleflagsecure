.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda6;->f$0:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda6;->f$0:Landroid/media/RoutingSessionInfo;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->$r8$lambda$KyKSxB0Ku4M1_q4Ry-XouAnbgMU(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
