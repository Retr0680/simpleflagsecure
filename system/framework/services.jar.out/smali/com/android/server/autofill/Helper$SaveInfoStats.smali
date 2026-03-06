.class public Lcom/android/server/autofill/Helper$SaveInfoStats;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveInfoStats"
.end annotation


# instance fields
.field public saveDataTypeCount:I

.field public saveInfoCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "saveInfoCount"    # I
    .param p2, "saveDataTypeCount"    # I

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/android/server/autofill/Helper$SaveInfoStats;->saveInfoCount:I

    .line 457
    iput p2, p0, Lcom/android/server/autofill/Helper$SaveInfoStats;->saveDataTypeCount:I

    .line 458
    return-void
.end method
