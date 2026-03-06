.class Lcom/android/server/input/InputSettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputSettingsObserver.java"


# static fields
.field private static final DEEP_PRESS_ENABLED:Ljava/lang/String; = "deep_press_enabled"

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mNative:Lcom/android/server/input/NativeInputManagerService;

.field private final mObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public static synthetic $r8$lambda$2uu-5VgzBAVH96KjrIYFV8FVeVQ(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$24(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6oq7bOpVftSU3OE_HHVEtJm_PHw(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$31(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-nmfADGlbXR2y7cYvJjCtqiCDU(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$18(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B6UbsHTKEzcrp2SmYSj1UeL9fa0(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BOzEmCS9Jya1bSR1eCAdAbZibBc(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$20(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DNZP2CcPqkve0D6JriX5TFF7Ftw(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$21(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E77TZbEY0Eiqo5odbeeaxq9YVVY(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EZo0BN6vEeXLyFlM39mQLCNLQRU(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gcygn9rRUf7IcgoJH-MXOFnUvCk(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$28(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H1paEVQ6iS1w225jbFS3KlGpUH0(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAIqOWxGj0NqFaNlwpNZXIwerhY(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQqGKcfcR0EZ-mDGhMY_gImu--o(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$27(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MotvkOT12GYIlX8NWJLa1hYA0GA(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QdnpwXhg1-UovvW3vm6K6ReunTA(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$17(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rr0lgi-WpfNxFXW9-C-Qm7EPPAQ(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RwhUKAUGanyEKdX5oDzP5wAXdec(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$22(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wj_9VZoLtcn3kLPMwJr7RhQ_MSk(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$30(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X0GRs6ozJ2WUFZSxbSHhppfiguM(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$29(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZJw7liozvnfpwJy3dHpbXK6TBs(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_fP8LM44ztL2nXy491rpD7KkA8M(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$16(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bALfrLUB8JbIzE6kEvOL0PKgEtk(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$23(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQ6Pakt0-8gsVCTKD29WSS6maqM(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fenPZ8hwNeHQiC5wNUY7p_Nan68(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fuEgvfKd7GY8eVSNTB3BzuuJKHQ(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k6knUOK1nWWHQJdmB93hBPmnk4g(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pqYW_K7ai5UbiF55BnWTwJfksFE(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qssZmvgvvHsM9r4tlwPcw-Njg-E(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$25(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$suNB2ZBWUoweyBdMN4-BMsvtA-Y(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$19(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tCrW_EpGwbX9GnJRAW5H1bM6Rsc(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uo0KjrciiUrgeyPJZXw8X_RZfIU(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uxAhDD-5nvRXXpXuIseeY9peJ1s(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$15(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xze_c500SSQNguXyBIwnZQOpiaY(Lcom/android/server/input/InputSettingsObserver;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->lambda$new$26(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmObservers(Lcom/android/server/input/InputSettingsObserver;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/NativeInputManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "service"    # Lcom/android/server/input/InputManagerService;
    .param p4, "nativeIms"    # Lcom/android/server/input/NativeInputManagerService;

    .line 58
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 59
    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/server/input/InputSettingsObserver;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p3, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 62
    iput-object p4, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 63
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 64
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "mouse_reverse_vertical_scrolling"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "mouse_swap_primary_button"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "mouse_scrolling_acceleration"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "mouse_pointer_acceleration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "mouse_scrolling_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "touchpad_pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "touchpad_natural_scrolling"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "touchpad_tap_to_click"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "touchpad_tap_dragging"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "touchpad_visualizer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "touchpad_right_click_zone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "touchpad_system_gestures"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "touchpad_acceleration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "pointer_location"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 100
    const-string v1, "accessibility_large_pointer_icon"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    .line 99
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "long_press_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "maximum_obscuring_opacity_for_touch"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    .line 104
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "show_key_presses"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "key_repeat_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "key_repeat_delay"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "key_repeat_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "show_rotary_input"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 118
    const-string v1, "accessibility_bounce_keys"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 120
    const-string v1, "accessibility_slow_keys"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 122
    const-string v1, "accessibility_sticky_keys"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "stylus_pointer_icon_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "pointer_fill_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "pointer_stroke_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "pointer_scale"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "touchpad_three_finger_tap_customization"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 63
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    .line 135
    return-void
.end method

.method private configureUserActivityPokeInterval()V
    .locals 4

    .line 335
    nop

    .line 336
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 338
    .local v0, "intervalMillis":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting user activity interval (ms) of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/server/input/NativeInputManagerService;->setMinTimeBetweenUserActivityPokes(J)V

    .line 341
    .end local v0    # "intervalMillis":I
    return-void
.end method

.method private constrainPointerSpeedValue(I)I
    .locals 2
    .param p1, "speed"    # I

    .line 175
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 169
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    nop

    .line 169
    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 171
    .local v0, "setting":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateMousePointerSpeed()V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateMouseReverseVerticalScrolling()V

    return-void
.end method

.method private synthetic lambda$new$10(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadHardwareStateNotificationsEnabled()V

    return-void
.end method

.method private synthetic lambda$new$11(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadRightClickZoneEnabled()V

    return-void
.end method

.method private synthetic lambda$new$12(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadSystemGesturesEnabled()V

    return-void
.end method

.method private synthetic lambda$new$13(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadAccelerationEnabled()V

    return-void
.end method

.method private synthetic lambda$new$14(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateShowTouches()V

    return-void
.end method

.method private synthetic lambda$new$15(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updatePointerLocation()V

    return-void
.end method

.method private synthetic lambda$new$16(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateAccessibilityLargePointer()V

    return-void
.end method

.method private synthetic lambda$new$17(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/input/InputSettingsObserver;->updateLongPressTimeout(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$18(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateMaximumObscuringOpacityForTouch()V

    return-void
.end method

.method private synthetic lambda$new$19(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateShowKeyPresses()V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateMouseSwapPrimaryButton()V

    return-void
.end method

.method private synthetic lambda$new$20(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateKeyRepeatInfo()V

    return-void
.end method

.method private synthetic lambda$new$21(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateKeyRepeatInfo()V

    return-void
.end method

.method private synthetic lambda$new$22(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateKeyRepeatInfo()V

    return-void
.end method

.method private synthetic lambda$new$23(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateShowRotaryInput()V

    return-void
.end method

.method private synthetic lambda$new$24(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateAccessibilityBounceKeys()V

    return-void
.end method

.method private synthetic lambda$new$25(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateAccessibilitySlowKeys()V

    return-void
.end method

.method private synthetic lambda$new$26(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateAccessibilityStickyKeys()V

    return-void
.end method

.method private synthetic lambda$new$27(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateStylusPointerIconEnabled()V

    return-void
.end method

.method private synthetic lambda$new$28(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updatePointerFillStyleFromSettings()V

    return-void
.end method

.method private synthetic lambda$new$29(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updatePointerStrokeStyleFromSettings()V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateMouseScrollingAcceleration()V

    return-void
.end method

.method private synthetic lambda$new$30(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updatePointerScaleFromSettings()V

    return-void
.end method

.method private synthetic lambda$new$31(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadThreeFingerTapShortcutEnabled()V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateMouseAccelerationEnabled()V

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateMouseScrollingSpeed()V

    return-void
.end method

.method private synthetic lambda$new$6(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadPointerSpeed()V

    return-void
.end method

.method private synthetic lambda$new$7(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadNaturalScrollingEnabled()V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadTapToClickEnabled()V

    return-void
.end method

.method private synthetic lambda$new$9(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->updateTouchpadTapDraggingEnabled()V

    return-void
.end method

.method private updateAccessibilityBounceKeys()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 321
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->getAccessibilityBounceKeysThreshold(Landroid/content/Context;)I

    move-result v1

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setAccessibilityBounceKeysThreshold(I)V

    .line 322
    return-void
.end method

.method private updateAccessibilityLargePointer()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    const-string v1, "accessibility_large_pointer_icon"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 272
    .local v0, "accessibilityConfig":I
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setUseLargePointerIcons(Z)V

    .line 273
    return-void
.end method

.method private updateAccessibilitySlowKeys()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 326
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->getAccessibilitySlowKeysThreshold(Landroid/content/Context;)I

    move-result v1

    .line 325
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setAccessibilitySlowKeysThreshold(I)V

    .line 327
    return-void
.end method

.method private updateAccessibilityStickyKeys()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 331
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 330
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setAccessibilityStickyKeysEnabled(Z)V

    .line 332
    return-void
.end method

.method private updateKeyRepeatInfo()V
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 296
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    const-string/jumbo v1, "key_repeat_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 300
    .local v2, "keyRepeatEnabled":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    .line 300
    const-string/jumbo v4, "key_repeat_timeout"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 303
    .local v0, "timeoutMs":I
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 304
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    .line 303
    const-string/jumbo v5, "key_repeat_delay"

    invoke-static {v1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 306
    .local v1, "delayMs":I
    iget-object v3, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/server/input/NativeInputManagerService;->setKeyRepeatConfiguration(IIZ)V

    .line 307
    return-void
.end method

.method private updateLongPressTimeout(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "long_press_timeout"

    const/16 v3, 0x190

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 281
    .local v0, "longPressTimeoutMs":I
    nop

    .line 282
    const-string/jumbo v1, "input_native_boot"

    const-string v2, "deep_press_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 284
    .local v1, "featureEnabledFlag":Z
    if-eqz v1, :cond_0

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 287
    .local v4, "enabled":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_1

    const-string v3, "Enabling"

    goto :goto_1

    :cond_1
    const-string v3, "Disabling"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " motion classifier because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    if-eqz v1, :cond_2

    const-string v3, "enabled"

    goto :goto_2

    :cond_2
    const-string v3, "disabled"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", long press timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v2, v4}, Lcom/android/server/input/NativeInputManagerService;->setMotionClassifierEnabled(Z)V

    .line 291
    return-void
.end method

.method private updateMaximumObscuringOpacityForTouch()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->getMaximumObscuringOpacityForTouch(Landroid/content/Context;)F

    move-result v0

    .line 311
    .local v0, "opacity":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setMaximumObscuringOpacityForTouch(F)V

    .line 317
    return-void

    .line 312
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid maximum obscuring opacity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", it should be >= 0 and <= 1, rejecting update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private updateMouseAccelerationEnabled()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 203
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->isMousePointerAccelerationEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 202
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setMouseAccelerationEnabled(Z)V

    .line 204
    return-void
.end method

.method private updateMousePointerSpeed()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "pointer_speed"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 183
    .local v0, "speed":I
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/input/InputSettingsObserver;->constrainPointerSpeedValue(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/input/NativeInputManagerService;->setPointerSpeed(I)V

    .line 184
    return-void
.end method

.method private updateMouseReverseVerticalScrolling()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 188
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->isMouseReverseVerticalScrollingEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 187
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setMouseReverseVerticalScrollingEnabled(Z)V

    .line 189
    return-void
.end method

.method private updateMouseScrollingAcceleration()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 198
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 197
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setMouseScrollingAccelerationEnabled(Z)V

    .line 199
    return-void
.end method

.method private updateMouseScrollingSpeed()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->getMouseScrollingSpeed(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/input/InputSettingsObserver;->constrainPointerSpeedValue(I)I

    move-result v1

    .line 207
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setMouseScrollingSpeed(I)V

    .line 209
    return-void
.end method

.method private updateMouseSwapPrimaryButton()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->isMouseSwapPrimaryButtonEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 192
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setMouseSwapPrimaryButtonEnabled(Z)V

    .line 194
    return-void
.end method

.method private updatePointerFillStyleFromSettings()V
    .locals 4

    .line 349
    nop

    .line 352
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    const-string/jumbo v1, "pointer_fill_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 356
    .local v0, "pointerFillStyle":I
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setPointerFillStyle(I)V

    .line 357
    return-void
.end method

.method private updatePointerLocation()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 257
    const-string/jumbo v1, "pointer_location"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updatePointerLocationEnabled(Z)V

    .line 258
    return-void
.end method

.method private updatePointerScaleFromSettings()V
    .locals 4

    .line 371
    nop

    .line 374
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    const-string/jumbo v3, "pointer_scale"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 377
    .local v0, "pointerScale":F
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setPointerScale(F)V

    .line 378
    return-void
.end method

.method private updatePointerStrokeStyleFromSettings()V
    .locals 4

    .line 360
    nop

    .line 363
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    const-string/jumbo v1, "pointer_stroke_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 367
    .local v0, "pointerStrokeStyle":I
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setPointerStrokeStyle(I)V

    .line 368
    return-void
.end method

.method private updateShowKeyPresses()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "show_key_presses"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updateShowKeyPresses(Z)V

    .line 262
    return-void
.end method

.method private updateShowRotaryInput()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "show_rotary_input"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updateShowRotaryInput(Z)V

    .line 266
    return-void
.end method

.method private updateShowTouches()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const-string/jumbo v1, "show_touches"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setShowTouches(Z)V

    .line 253
    return-void
.end method

.method private updateStylusPointerIconEnabled()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 345
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/input/InputSettings;->isStylusPointerIconEnabled(Landroid/content/Context;Z)Z

    move-result v1

    .line 344
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setStylusPointerIconEnabled(Z)V

    .line 346
    return-void
.end method

.method private updateTouchpadAccelerationEnabled()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 248
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->isTouchpadAccelerationEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 247
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadAccelerationEnabled(Z)V

    .line 249
    return-void
.end method

.method private updateTouchpadHardwareStateNotificationsEnabled()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/input/InputSettings;->useTouchpadVisualizer(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updateTouchpadVisualizerEnabled(Z)V

    .line 231
    return-void
.end method

.method private updateTouchpadNaturalScrollingEnabled()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 218
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->useTouchpadNaturalScrolling(Landroid/content/Context;)Z

    move-result v1

    .line 217
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadNaturalScrollingEnabled(Z)V

    .line 219
    return-void
.end method

.method private updateTouchpadPointerSpeed()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->getTouchpadPointerSpeed(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/input/InputSettingsObserver;->constrainPointerSpeedValue(I)I

    move-result v1

    .line 212
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadPointerSpeed(I)V

    .line 214
    return-void
.end method

.method private updateTouchpadRightClickZoneEnabled()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/input/InputSettings;->useTouchpadRightClickZone(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadRightClickZoneEnabled(Z)V

    .line 235
    return-void
.end method

.method private updateTouchpadSystemGesturesEnabled()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/input/InputSettings;->useTouchpadSystemGestures(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadSystemGesturesEnabled(Z)V

    .line 244
    return-void
.end method

.method private updateTouchpadTapDraggingEnabled()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/input/InputSettings;->useTouchpadTapDragging(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadTapDraggingEnabled(Z)V

    .line 227
    return-void
.end method

.method private updateTouchpadTapToClickEnabled()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/input/InputSettings;->useTouchpadTapToClick(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadTapToClickEnabled(Z)V

    .line 223
    return-void
.end method

.method private updateTouchpadThreeFingerTapShortcutEnabled()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 239
    invoke-static {v1}, Landroid/hardware/input/InputSettings;->useTouchpadThreeFingerTapShortcut(Landroid/content/Context;)Z

    move-result v1

    .line 238
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadThreeFingerTapShortcutEnabled(Z)V

    .line 240
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 165
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    const-string/jumbo v1, "setting changed"

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public registerAndUpdate()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 143
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputSettingsObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputSettingsObserver$1;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/input/InputSettingsObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 157
    .local v1, "observer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    const-string/jumbo v2, "just booted"

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 158
    .end local v1    # "observer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    goto :goto_1

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/android/server/input/InputSettingsObserver;->configureUserActivityPokeInterval()V

    .line 161
    return-void
.end method
