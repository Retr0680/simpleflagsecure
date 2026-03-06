.class final Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NothSensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/NothSensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sensors/NothSensorHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/NothSensorHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    .line 260
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 266
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmContext(Lcom/android/server/sensors/NothSensorHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 267
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v1, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fputmScreenBrightnessModeSetting(Lcom/android/server/sensors/NothSensorHelper;I)V

    .line 270
    iget-object v2, p0, Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v2}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetDEBUG(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const-string v2, "NothSensorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenBrightnessMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v4}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmScreenBrightnessModeSetting(Lcom/android/server/sensors/NothSensorHelper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 276
    :cond_0
    :goto_0
    goto :goto_2

    .line 273
    :goto_1
    nop

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/sensors/NothSensorHelper$SettingsObserver;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v2, v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fputmScreenBrightnessModeSetting(Lcom/android/server/sensors/NothSensorHelper;I)V

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
