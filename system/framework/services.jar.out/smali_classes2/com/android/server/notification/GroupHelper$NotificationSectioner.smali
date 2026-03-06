.class public Lcom/android/server/notification/GroupHelper$NotificationSectioner;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/GroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NotificationSectioner"
.end annotation


# instance fields
.field final mName:Ljava/lang/String;

.field private final mSectionChecker:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mSummaryId:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "summaryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 2010
    .local p3, "sectionChecker":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    .line 2012
    iput p2, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    .line 2013
    iput-object p3, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    .line 2014
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;)V

    return-void
.end method

.method private isNotificationGroupable(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 2021
    nop

    .line 2022
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2023
    return v1

    .line 2027
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 2028
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2029
    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2030
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    if-le v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    nop

    .line 2031
    .local v2, "isColorizedFGS":Z
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    nop

    if-le v4, v3, :cond_2

    const-class v4, Landroid/app/Notification$CallStyle;

    .line 2032
    invoke-virtual {v0, v4}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    nop

    .line 2033
    .local v4, "isCall":Z
    if-nez v2, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_2

    .line 2037
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2038
    return v1

    .line 2041
    :cond_5
    return v3

    .line 2034
    :goto_2
    return v1
.end method


# virtual methods
.method isInSection(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 2017
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isNotificationGroupable(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
