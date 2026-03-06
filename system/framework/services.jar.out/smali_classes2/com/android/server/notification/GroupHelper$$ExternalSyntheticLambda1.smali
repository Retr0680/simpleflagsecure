.class public final synthetic Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->$r8$lambda$Jb-alKhUHC8ZHo9uONB6z9BQH8c(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    return p1
.end method
