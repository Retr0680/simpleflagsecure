.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;
.super Ljava/lang/Enum;
.source "NotificationRecordLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecordLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationPullStatsEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

.field public static final enum NOTIFICATION_BUNDLE_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;
    .locals 1

    .line 369
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->NOTIFICATION_BUNDLE_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    filled-new-array {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 370
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    const/4 v1, 0x0

    const/16 v2, 0x818

    const-string v3, "NOTIFICATION_BUNDLE_PREFERENCES_PULLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->NOTIFICATION_BUNDLE_PREFERENCES_PULLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    .line 369
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->$values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 374
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 375
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->mId:I

    .line 376
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 369
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;
    .locals 1

    .line 369
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPullStatsEvent;->mId:I

    return v0
.end method
