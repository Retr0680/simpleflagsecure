.class Lcom/android/server/NtThemeManager$2;
.super Landroid/database/ContentObserver;
.source "NtThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NtThemeManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NtThemeManager;


# direct methods
.method constructor <init>(Lcom/android/server/NtThemeManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NtThemeManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/android/server/NtThemeManager$2;->this$0:Lcom/android/server/NtThemeManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 90
    iget-object v0, p0, Lcom/android/server/NtThemeManager$2;->this$0:Lcom/android/server/NtThemeManager;

    invoke-static {v0}, Lcom/android/server/NtThemeManager;->-$$Nest$mgetCurrentUser(Lcom/android/server/NtThemeManager;)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/server/NtThemeManager$2;->this$0:Lcom/android/server/NtThemeManager;

    iget-object v1, p0, Lcom/android/server/NtThemeManager$2;->this$0:Lcom/android/server/NtThemeManager;

    invoke-virtual {v1}, Lcom/android/server/NtThemeManager;->isSystemInDarkMode()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/NtThemeManager;->-$$Nest$msetExtraDark(Lcom/android/server/NtThemeManager;ZZ)V

    .line 93
    :cond_0
    return-void
.end method
