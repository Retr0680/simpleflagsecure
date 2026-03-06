.class Lcom/android/server/TradeInModeService$2;
.super Ljava/lang/Object;
.source "TradeInModeService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TradeInModeService;->watchForAccountsCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TradeInModeService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/android/server/TradeInModeService$2;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 428
    iget-object v0, p0, Lcom/android/server/TradeInModeService$2;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mstopTradeInMode(Lcom/android/server/TradeInModeService;)V

    .line 429
    return-void
.end method
