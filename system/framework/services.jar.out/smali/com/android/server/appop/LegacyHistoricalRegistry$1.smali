.class Lcom/android/server/appop/LegacyHistoricalRegistry$1;
.super Landroid/database/ContentObserver;
.source "LegacyHistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/LegacyHistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/LegacyHistoricalRegistry;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iput-object p3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 229
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$mupdateParametersFromSetting(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/content/ContentResolver;)V

    .line 230
    return-void
.end method
