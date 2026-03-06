.class interface abstract annotation Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier$ProfileModes;
.super Ljava/lang/Object;
.source "MediaQualityService.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "ProfileModes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ADD:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final PARAMETER_CAPABILITY_CHANGED:I = 0x5

.field public static final REMOVE:I = 0x3

.field public static final UPDATE:I = 0x2
