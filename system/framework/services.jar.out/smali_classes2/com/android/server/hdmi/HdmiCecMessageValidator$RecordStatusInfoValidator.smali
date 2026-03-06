.class Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordStatusInfoValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 5
    .param p1, "params"    # [B

    .line 904
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 905
    const/4 v0, 0x4

    return v0

    .line 907
    :cond_0
    const/4 v0, 0x0

    aget-byte v2, p1, v0

    const/4 v3, 0x7

    invoke-static {v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    nop

    if-nez v2, :cond_3

    aget-byte v2, p1, v0

    .line 908
    const/16 v3, 0x9

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    nop

    if-nez v2, :cond_3

    aget-byte v2, p1, v0

    .line 909
    const/16 v3, 0x10

    const/16 v4, 0x17

    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    nop

    if-nez v2, :cond_3

    aget-byte v2, p1, v0

    .line 910
    const/16 v3, 0x1a

    const/16 v4, 0x1b

    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    if-nez v2, :cond_1

    aget-byte v2, p1, v0

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 907
    :goto_1
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
