.class Lcom/android/server/TradeInModeService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "TradeInModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TradeInModeService;->watchForNetworkChange()V
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

    .line 405
    iput-object p1, p0, Lcom/android/server/TradeInModeService$1;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 408
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 409
    iget-object v0, p0, Lcom/android/server/TradeInModeService$1;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mstopTradeInMode(Lcom/android/server/TradeInModeService;)V

    .line 410
    return-void
.end method
