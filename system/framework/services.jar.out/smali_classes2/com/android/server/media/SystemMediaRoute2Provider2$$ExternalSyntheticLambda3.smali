.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

.field public final synthetic f$1:Landroid/media/MediaRoute2ProviderInfo$Builder;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/MediaRoute2ProviderInfo$Builder;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$1:Landroid/media/MediaRoute2ProviderInfo$Builder;

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$1:Landroid/media/MediaRoute2ProviderInfo$Builder;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->$r8$lambda$lw79SEdqVwBQKy9kaI56s6o5cFc(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/MediaRoute2ProviderInfo$Builder;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method
