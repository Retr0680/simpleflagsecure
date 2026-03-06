.class Lcom/android/server/audio/SpatializerHelper$1;
.super Landroid/util/SparseIntArray;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 91
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 93
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 97
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 99
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 101
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 102
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 103
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 104
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 105
    const/16 v0, 0x16

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 106
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 107
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    const/16 v0, 0x13

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 109
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 110
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 112
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 114
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 116
    return-void
.end method
