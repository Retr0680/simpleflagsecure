.class public final Lcom/android/server/input/KeyboardMetricsCollector;
.super Ljava/lang/Object;
.source "KeyboardMetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;,
        Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DEFAULT_LANGUAGE_TAG:Ljava/lang/String; = "None"

.field static final DEFAULT_LAYOUT_NAME:Ljava/lang/String; = "Default"

.field private static final INVALID_SYSTEMS_EVENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyboardMetricCollector"


# direct methods
.method static bridge synthetic -$$Nest$smisValidSelectionCriteria(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/input/KeyboardMetricsCollector;->isValidSelectionCriteria(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-string v0, "KeyboardMetricCollector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addKeyboardLayoutConfigurationToProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;)V
    .locals 5
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "layoutConfiguration"    # Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;

    .line 125
    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 127
    .local v0, "keyboardLayoutConfigToken":J
    iget-object v2, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLanguageTag:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 129
    const-wide v2, 0x10500000001L

    iget v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutType:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 131
    const-wide v2, 0x10900000003L

    iget-object v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 133
    const-wide v2, 0x10500000004L

    iget v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->layoutSelectionCriteria:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 135
    const-wide v2, 0x10900000006L

    iget-object v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLanguageTag:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 137
    const-wide v2, 0x10500000005L

    iget v4, p1, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLayoutType:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 139
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 140
    return-void
.end method

.method private static isValidSelectionCriteria(I)Z
    .locals 2
    .param p0, "layoutSelectionCriteria"    # I

    .line 311
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static logKeyboardConfiguredAtom(Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;)V
    .locals 9
    .param p0, "event"    # Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;

    .line 96
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 98
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getLayoutConfigurations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;

    .line 99
    .local v2, "layoutConfiguration":Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;
    invoke-static {v0, v2}, Lcom/android/server/input/KeyboardMetricsCollector;->addKeyboardLayoutConfigurationToProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;)V

    .line 100
    .end local v2    # "layoutConfiguration":Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;
    goto :goto_0

    .line 102
    :cond_0
    nop

    .line 103
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->isFirstConfiguration()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getVendorId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getProductId()I

    move-result v6

    .line 104
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->getDeviceBus()I

    move-result v8

    .line 102
    const/16 v3, 0x2aa

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII[BI)V

    .line 106
    sget-boolean v1, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging Keyboard configuration event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardMetricCollector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    return-void
.end method

.method public static logKeyboardSystemsEventReportedAtom(Landroid/view/InputDevice;[III)V
    .locals 8
    .param p0, "inputDevice"    # Landroid/view/InputDevice;
    .param p1, "keycodes"    # [I
    .param p2, "modifierState"    # I
    .param p3, "systemsEvent"    # I

    .line 72
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v5, p1

    move v6, p2

    move v4, p3

    goto :goto_0

    .line 76
    :cond_0
    nop

    .line 77
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result v3

    .line 78
    invoke-virtual {p0}, Landroid/view/InputDevice;->getDeviceBus()I

    move-result v7

    .line 76
    const/16 v1, 0x2ab

    move-object v5, p1

    move v6, p2

    move v4, p3

    .end local p1    # "keycodes":[I
    .end local p2    # "modifierState":I
    .end local p3    # "systemsEvent":I
    .local v4, "systemsEvent":I
    .local v5, "keycodes":[I
    .local v6, "modifierState":I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[III)V

    .line 80
    sget-boolean p1, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Logging Keyboard system event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyboardMetricCollector"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    return-void

    .line 72
    .end local v4    # "systemsEvent":I
    .end local v5    # "keycodes":[I
    .end local v6    # "modifierState":I
    .restart local p1    # "keycodes":[I
    .restart local p2    # "modifierState":I
    .restart local p3    # "systemsEvent":I
    :cond_2
    move-object v5, p1

    move v6, p2

    move v4, p3

    .line 74
    .end local p1    # "keycodes":[I
    .end local p2    # "modifierState":I
    .end local p3    # "systemsEvent":I
    .restart local v4    # "systemsEvent":I
    .restart local v5    # "keycodes":[I
    .restart local v6    # "modifierState":I
    :goto_0
    return-void
.end method
