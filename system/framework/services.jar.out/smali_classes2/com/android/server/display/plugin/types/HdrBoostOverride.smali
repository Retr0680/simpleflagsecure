.class public final Lcom/android/server/display/plugin/types/HdrBoostOverride;
.super Ljava/lang/Record;
.source "HdrBoostOverride.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "sdrHdrRatio",
        "maxHdrBrightness",
        "customTransitionRate"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        F,
        F,
        F
    }
.end annotation


# static fields
.field private static final HDR_OFF:Lcom/android/server/display/plugin/types/HdrBoostOverride;


# instance fields
.field private final customTransitionRate:F

.field private final maxHdrBrightness:F

.field private final sdrHdrRatio:F


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/display/plugin/types/HdrBoostOverride;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/display/plugin/types/HdrBoostOverride;

    iget v0, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->sdrHdrRatio:F

    iget v1, p1, Lcom/android/server/display/plugin/types/HdrBoostOverride;->sdrHdrRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->maxHdrBrightness:F

    iget v1, p1, Lcom/android/server/display/plugin/types/HdrBoostOverride;->maxHdrBrightness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->customTransitionRate:F

    iget p1, p1, Lcom/android/server/display/plugin/types/HdrBoostOverride;->customTransitionRate:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    .line 0
    iget v0, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->sdrHdrRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->maxHdrBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->customTransitionRate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/android/server/display/plugin/types/HdrBoostOverride;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/display/plugin/types/HdrBoostOverride;-><init>(FFF)V

    sput-object v0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->HDR_OFF:Lcom/android/server/display/plugin/types/HdrBoostOverride;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "sdrHdrRatio"    # F
    .param p2, "maxHdrBrightness"    # F
    .param p3, "customTransitionRate"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sdrHdrRatio",
            "maxHdrBrightness",
            "customTransitionRate"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->sdrHdrRatio:F

    iput p2, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->maxHdrBrightness:F

    iput p3, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->customTransitionRate:F

    return-void
.end method

.method public static forHdrOff()Lcom/android/server/display/plugin/types/HdrBoostOverride;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->HDR_OFF:Lcom/android/server/display/plugin/types/HdrBoostOverride;

    return-object v0
.end method

.method public static forSdrHdrRatio(F)Lcom/android/server/display/plugin/types/HdrBoostOverride;
    .locals 3
    .param p0, "sdrHdrRatio"    # F

    .line 56
    new-instance v0, Lcom/android/server/display/plugin/types/HdrBoostOverride;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/display/plugin/types/HdrBoostOverride;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public customTransitionRate()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->customTransitionRate:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/types/HdrBoostOverride;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 33
    iget v0, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->sdrHdrRatio:F

    iget v1, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->maxHdrBrightness:F

    iget v2, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->customTransitionRate:F

    invoke-static {v0, v1, v2}, Lcom/android/server/display/plugin/types/HdrBoostOverride$$ExternalSyntheticRecord0;->m(FFF)I

    move-result v0

    return v0
.end method

.method public maxHdrBrightness()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->maxHdrBrightness:F

    return v0
.end method

.method public sdrHdrRatio()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/android/server/display/plugin/types/HdrBoostOverride;->sdrHdrRatio:F

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/plugin/types/HdrBoostOverride;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/display/plugin/types/HdrBoostOverride;

    const-string/jumbo v2, "sdrHdrRatio;maxHdrBrightness;customTransitionRate"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
