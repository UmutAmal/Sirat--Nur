package com.umutamal.sirat_i_nur;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.RemoteViews;
import es.antonborri.home_widget.HomeWidgetProvider;

public class PrayerWidgetProvider extends HomeWidgetProvider {

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds, SharedPreferences widgetData) {
        for (int appWidgetId : appWidgetIds) {
            
            // Get the view representing the widget layout
            RemoteViews views = new RemoteViews(context.getPackageName(), R.layout.widget_prayer);

            // Read the data sent from Flutter (WidgetService)
            String nextPrayerHeader = widgetData.getString("next_prayer_header", "");
            String nextPrayerName = widgetData.getString("next_prayer_name", "");
            String nextPrayerTime = widgetData.getString("next_prayer_time", "--:--");

            // Update the UI
            views.setTextViewText(R.id.tv_next_prayer_header, nextPrayerHeader);
            views.setTextViewText(R.id.tv_next_prayer_name, nextPrayerName);
            views.setTextViewText(R.id.tv_next_prayer_time, nextPrayerTime);

            // Instruct the widget manager to update the widget
            appWidgetManager.updateAppWidget(appWidgetId, views);
        }
    }
}
