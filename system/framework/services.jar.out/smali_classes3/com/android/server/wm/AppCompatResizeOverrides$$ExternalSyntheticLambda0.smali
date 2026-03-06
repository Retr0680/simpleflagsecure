.class public final synthetic Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatResizeOverrides;

.field public final synthetic f$1:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatResizeOverrides;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatResizeOverrides;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatResizeOverrides;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatResizeOverrides;->$r8$lambda$KwgGiBwNtcm_k4DA4WB9j_d8dCA(Lcom/android/server/wm/AppCompatResizeOverrides;Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method
